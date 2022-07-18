import '../../xephas_exporter.dart';

class BuiltApp {
  // name of the app]
  final String name, description;

  // web url of the app
  final String webUrl;

  // app color
  final Color appColor;

  BuiltApp({
    required this.name,
    required this.description,
    required this.webUrl,
    required this.appColor,
  });

  // from id
  factory BuiltApp.fromId(String? appId) {
    switch (appId) {
      case 'thumbsapp':
        return BuiltApp(
          name: 'The Thumbs App',
          description:
              'The number one Ugandan application that allows you to accumulate cash by viewing Ads and withdraw the cash at your own conviniance',
          webUrl: 'https://xephas.com',
          appColor: thumbsColor,
        );
      default:
        return BuiltApp(
          name: 'The Xephas Portfolio',
          description: 'This is the Official Portfolio App of Xephas Brian.',
          webUrl: 'https://xephas.web.app',
          appColor: xephasColor,
        );
    }
  }
}
