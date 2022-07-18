import '../xephas_exporter.dart';

class XephasApp extends ConsumerWidget {
  const XephasApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final themeMode = ref.watch(themeModeProvider);
    final goRouter = ref.watch(routerProvider);

    return ResponsiveSizer(
      builder: (context, _, __) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        themeMode: themeMode,
        theme: theme.lightTheme,
        // Enable this later on in the Future when we add dark mode support
        // darkTheme: theme.darkTheme,
        routerDelegate: goRouter.routerDelegate,
        routeInformationParser: goRouter.routeInformationParser,
        routeInformationProvider: goRouter.routeInformationProvider,
        color: xephasColor,
        title: xephasTitle,
        restorationScopeId: "xephas",
        // -- Scroll Behavior --
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          physics: const BouncingScrollPhysics(),
          scrollbars: false,
        ),
      ),
    );
  }
}
