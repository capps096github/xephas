import 'xephas_exporter.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [ProviderLogger()],
      child: const XephasApp(),
    ),
  );
}


// TODO
// we'll add device preview to the app so that we deploy it on the web
// if we are on the web, we'll use the web previewer to preview the app
// we'll use the responsive widget to detect the screen size, and on mobile we load the UI buh for table and desktop we use the preview