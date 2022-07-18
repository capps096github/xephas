import '../xephas_exporter.dart';

import '../page/home/home_page.dart';
import '../page/error/error_page.dart';

class AppRouter {
  static const String initialPath = '/';

  // thumbsApp link
  static const String thumbsAppPath = '/apps/thumbsapp';

  // home path
  static String get homePath => '/home';

  // apps path
  static String get appsPath => '/apps';

  static GoRouter router = GoRouter(
    // initialLocation: initialPath,
    initialLocation: thumbsAppPath,
    // turn off history tracking in the browser for all navigation
    routerNeglect: true,
    routes: [
      // home page
      GoRoute(
        // redirect: (_) => homePage,
        path: "/",
        builder: (context, state) => const XephasHome(),
      ),

      // apps
      GoRoute(
        path: appsPath,
        builder: (context, state) => const TheXephasApps(),
      ),

      // app details
      GoRoute(
        path: "$appsPath/:appId",
        builder: (context, state) {
          // get the BuiltApp from the param passed to the url
          // use state.params to get router parameter values
          final builtApp =
              BuiltApp.fromId(state.params['appId'] ?? 'portfolio');

          return AppDetails(app: builtApp);
        },
      ),

      // error page
      GoRoute(
        path: "/error",
        builder: (context, state) => ErrorPage(state.error!),
      ),
    ],
    errorBuilder: (context, state) => ErrorPage(state.error!),
  );
}
