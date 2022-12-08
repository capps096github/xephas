import 'xephas_exporter.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [ProviderLogger()],
      child: const XephasApp(),
    ),
  );
}

// TODO Advance this app to only allow Cephas to Sign In and the rest are viewers who are logged in anonymously into the site
// the reason for thsi si so that we have the admin rights to manage the app and update it as we grow in our career

// TODO deploy to web

// TODO
// we'll add device preview to the app so that we deploy it on the web
// if we are on the web, we'll use the web previewer to preview the app
// we'll use the responsive widget to detect the screen size, and on mobile we load the UI buh for table and desktop we use the preview