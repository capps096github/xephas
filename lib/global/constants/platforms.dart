import 'package:flutter/foundation.dart';

/// check if the current platform is Windows
final bool isXephasWindows = (defaultTargetPlatform == TargetPlatform.windows);

/// check if the current platform is Windows
final bool isXephasAndroid = (defaultTargetPlatform == TargetPlatform.android);

/// check if the current platform is Windows
final bool isXephasiOs = (defaultTargetPlatform == TargetPlatform.iOS);

/// check if the current platform is Windows or Web
const bool isXephasWeb = (kIsWeb);

/// check if the current platform is Windows or Web
final bool isXephasWebOrWindows = (isXephasWindows || isXephasWeb);

///This variable declares that if we are on phone
///, no mouse region, else we gat a mouse region
final isPhone = (isXephasAndroid || isXephasiOs);
