import '../../../xephas_exporter.dart';

class SocialContact {
  //
  final IconData icon, trailingIcon;

  // social platform
  final String platform;

  // tooltip
  final String tooltip;

  // colors
  final Color platformColor, textColor;

  //
  final VoidCallback onTap;

  // handle
  final String handle;

  SocialContact({
    required this.icon,
    required this.platform,
    required this.handle,
    required this.tooltip,
    required this.platformColor,
    this.textColor = xephasWhite,
    required this.onTap,
    required this.trailingIcon,
  });
}
