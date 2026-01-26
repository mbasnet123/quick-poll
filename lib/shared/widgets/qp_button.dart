import 'package:flutter/material.dart';

class FilledCTAButton extends StatelessWidget {
  const FilledCTAButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isExpanded = false,
    this.isLoading = false,
    this.isDisabled = false,
    this.borderRadius,
    this.vPadding,
    this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.textStyle,
  });

  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? borderRadius;
  final double? vPadding;
  final Widget? icon;
  final bool isDisabled;
  final bool isLoading;
  final bool isExpanded;
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  bool get _isInteractive => !isDisabled && !isLoading && onPressed != null;

  ButtonStyle getButtonStyle(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor ?? colorScheme.primary,
      foregroundColor: foregroundColor ?? colorScheme.surface,
      disabledBackgroundColor:
      backgroundColor?.withValues(alpha: 0.5) ??
          colorScheme.primary.withValues(alpha: 0.5),
      disabledForegroundColor:
      foregroundColor?.withValues(alpha: 0.5) ??
          colorScheme.onPrimary.withValues(alpha: 0.5),
      elevation: 0,
      shadowColor: colorScheme.primary.withValues(alpha: 0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 100),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: vPadding ?? 16),
    );
  }

  Widget buildContent(BuildContext context) {
    final mainAxisSize = isExpanded ? MainAxisSize.max : MainAxisSize.min;
    return Row(
      mainAxisSize: mainAxisSize,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isLoading) ...[
          const SizedBox(
            height: 10,
            width: 10,
            child: CircularProgressIndicator(),
          ),
          const SizedBox(width: 8),
        ],
        if (icon != null) ...[
          icon!,
          const SizedBox(width: 8),
        ],
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getButtonStyle(context),
      onPressed: _isInteractive ? onPressed : null,
      child: buildContent(context),
    );
  }
}

class OutlinedCTAButton extends StatelessWidget {
  const OutlinedCTAButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isExpanded = false,
    this.isLoading = false,
    this.isDisabled = false,
    this.borderRadius,
    this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.textStyle,
    this.vPadding,
    this.borderColor,
  });

  final Color? backgroundColor;
  final Color? borderColor;

  final Color? foregroundColor;
  final double? borderRadius;
  final double? vPadding;
  final Widget? icon;
  final bool isDisabled;
  final bool isLoading;
  final bool isExpanded;
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  bool get _isInteractive => !isDisabled && !isLoading && onPressed != null;

  ButtonStyle getButtonStyle(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return OutlinedButton.styleFrom(
      backgroundColor: backgroundColor ?? colorScheme.surface,
      foregroundColor: foregroundColor ?? colorScheme.primary,
      disabledBackgroundColor:
      backgroundColor?.withValues(alpha: 0.5) ??
          colorScheme.primary.withValues(alpha: 0.5),
      disabledForegroundColor:
      foregroundColor?.withValues(alpha: 0.5) ??
          colorScheme.onPrimary.withValues(alpha: 0.5),
      elevation: 0,
      side: BorderSide(
        color: !isDisabled
            ? (borderColor ?? colorScheme.outline)
            : (borderColor?.withValues(alpha: 0.3) ?? colorScheme.primary.withValues(alpha: 0.3)),
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 100),
      ),
      padding: EdgeInsets.symmetric(vertical: vPadding ?? 16),
    );
  }

  Widget buildContent(BuildContext context) {
    final mainAxisSize = isExpanded ? MainAxisSize.max : MainAxisSize.min;
    return Row(
      mainAxisSize: mainAxisSize,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isLoading) ...[
          const SizedBox(
            height: 10,
            width: 10,
            child: CircularProgressIndicator(),
          ),
          const SizedBox(width: 8),
        ],
        if (icon != null) ...[
          icon!,
          const SizedBox(width: 8),
        ],
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: getButtonStyle(context),
      onPressed: _isInteractive ? onPressed : null,
      child: buildContent(context),
    );
  }
}
