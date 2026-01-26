import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart'
    show GoogleSignInExceptionCode;

part 'failure_entity.freezed.dart';

abstract class Failure implements Exception {
  String get message;
}

@freezed
sealed class GenericFailure with _$GenericFailure implements Failure {
  const factory GenericFailure({required String message}) = _GenericFailure;
  const GenericFailure._();

  // @override
  // String get message => "Something went wrong";
}

@freezed
sealed class LocalFailure with _$LocalFailure implements Failure {
  const factory LocalFailure({required String message}) = _LocalFailure;

  const LocalFailure._();

  // @override
  // String get message => "Something went wrong on local";
}

@freezed
sealed class InvalidInputFailure with _$InvalidInputFailure implements Failure {
  const factory InvalidInputFailure({required String message}) =
      _InvalidInputFailure;
  const InvalidInputFailure._();

  // @override
  // String get message => "Invalid Input";
}

@freezed
sealed class GoogleAuthFailure with _$GoogleAuthFailure implements Failure {
  const factory GoogleAuthFailure({required String message}) =
      _GoogleAuthFailure;

  const GoogleAuthFailure._();

  factory GoogleAuthFailure.fromCode(GoogleSignInExceptionCode code,
      [String? description]) {
    final message = _mapCodeToMessage(code, description);
    return GoogleAuthFailure(message: message);
  }

  static String _mapCodeToMessage(GoogleSignInExceptionCode code,
      [String? description]) {
    switch (code) {
      case GoogleSignInExceptionCode.canceled:
        return 'The sign-in was canceled. Please try again.';
      case GoogleSignInExceptionCode.interrupted:
        return 'The sign-in was interrupted. Please retry.';
      case GoogleSignInExceptionCode.clientConfigurationError:
        return 'Google sign-in is misconfigured. Please contact support.';
      case GoogleSignInExceptionCode.providerConfigurationError:
        return 'The Google authentication provider is unavailable or misconfigured.';
      case GoogleSignInExceptionCode.uiUnavailable:
        return 'Sign-in UI could not be displayed. Try restarting the app.';
      case GoogleSignInExceptionCode.userMismatch:
        return 'The signed-in user does not match the current session.';
      case GoogleSignInExceptionCode.unknownError:
        return description ??
            'An unknown error occurred during Google sign-in.';
    }
  }

  // @override
  // String get message => 'Google Authentication Error';
}

@freezed
sealed class FirebaseAuthFailure with _$FirebaseAuthFailure implements Failure {
  const factory FirebaseAuthFailure({required String message}) =
      _FirebaseAuthFailure;
  const FirebaseAuthFailure._(); // Private constructor for custom methods

  /// Factory constructor to map error codes to `FirebaseAuthFailure` instances
  factory FirebaseAuthFailure.fromErrorCode(String errorCode) {
    final message = _mapErrorCodeToMessage(errorCode);
    return FirebaseAuthFailure(message: message);
  }

  static String _mapErrorCodeToMessage(String errorCode) {
    switch (errorCode) {
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please contact support.';
      case 'too-many-requests':
        return 'Too many requests have been made. Please try again later.';
      case 'user-token-expired':
        return 'Your session has expired. Please log in again.';
      case 'network-request-failed':
        return 'A network error occurred. Please check your connection.';
      case 'user-disabled':
        return 'This user has been disabled. Please contact support.';
      case 'user-not-found':
        return 'No user found with this email.';
      case 'wrong-password':
        return 'The password entered is incorrect.';
      case 'INVALID_LOGIN_CREDENTIAL':
      case 'invalid-credential':
        return 'The provided login credentials are invalid.';
      case 'email-already-in-use':
        return 'This email is already associated with an account.';
      case 'weak-password':
        return 'The password entered is too weak. Please choose a stronger password.';
      case 'firebase_auth/invalid-credential':
        return 'The provided login credentials are invalid.';
      default:
        return 'An unknown authentication error occurred.';
    }
  }

  // @override
  // String get message => "Firebase auth";
}

@freezed
sealed class RemoteFailure with _$RemoteFailure implements Failure {
  const factory RemoteFailure({required String message}) = _RemoteFailure;
  const RemoteFailure._();
}
