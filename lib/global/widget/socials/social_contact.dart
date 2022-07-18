import '../../../xephas_exporter.dart';

class SocialContact {
  //
  final IconData icon, trailingIcon;
  final String label;
  final String tooltip;
  final Color socialColor, textColor;
  final VoidCallback onTap;

  SocialContact({
    required this.icon,
    required this.label,
    required this.tooltip,
    required this.socialColor,
    this.textColor = xephasWhite,
    required this.onTap,
    required this.trailingIcon,
  });
}
