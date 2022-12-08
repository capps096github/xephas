import '../xephas_exporter.dart';

/// this provides the default router delegate for the app
final routerProvider = Provider<GoRouter>(
  (ref) {
    // router delegate
    return GoRouter(
      initialLocation: initialPath,
      restorationScopeId: xephasPortfolioId,
      // turn off history tracking in the browser for all navigation
      routerNeglect: true,
      routes: [
        //* home page
        GoRoute(
          path: homePath,
          builder: (context, state) => const XephasHome(),
        ),

        // error page
        GoRoute(
          path: "/error",
          builder: (context, state) => ErrorPage(state.error!),
        ),

        // bio
        GoRoute(
          path: bioPath,
          builder: (context, state) => const XephasProfile(),
        ),

        // apps
        GoRoute(
          path: appsPath,
          builder: (context, state) => const TheXephasApps(),
        ),

        // app details
        // Change this to update by index or better yet, by id via shell route API of GoRouter
        // GoRoute(
        //   path: "$appsPath/:appId",
        //   builder: (context, state) {
        //     // get the BuiltApp from the param passed to the url
        //     // use state.params to get router parameter values
        //     final builtApp =
        //         BuiltApp.fromId(state.params['appId'] ?? 'portfolio');

        //     return AppDetails(app: builtApp);
        //   },
        // ),
      ],

      // errorBuilder: (context, state) => ThumbsErrorPage(state.error!),
      // log diagnostic info for your routes
      debugLogDiagnostics: true,
    );
  },
);
