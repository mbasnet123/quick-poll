import 'package:quick_poll/core/app/config/route/route_model.dart';

class Paths {
  static final RouteModel appStateObserver = RouteModel(
    routeName: 'appStateObserver',
    path: '/appStateObserver',
  );

  static final RouteModel homeScreenRoute = RouteModel(
    routeName: 'homeScreen',
    path: '/homeScreen',
  );

  static final RouteModel createPollScreenRoute = RouteModel(
    routeName: 'createPollScreen',
    path: '/createPollScreen',
  );

  static final RouteModel pollDetailsScreenRoute = RouteModel(
    routeName: 'pollDetailsScreen',
    path: '/pollDetailsScreen',
  );
}
