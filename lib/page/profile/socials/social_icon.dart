import '../../../xephas_exporter.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    required this.toolTip,
    required this.toolTipTextColor,
    required this.toolTipBacground,
    this.iconColor = xephasWhite,
    this.iconBacground = xephasWhite,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final String toolTip;
  final Color toolTipTextColor, toolTipBacground, iconColor, iconBacground;
  final VoidCallback onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: toolTip,
      textStyle: TextStyle(color: toolTipTextColor),
      decoration: BoxDecoration(
        color: toolTipBacground,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: DottedBorder(
          borderType: BorderType.Circle,
          color: iconBacground,
          child: CircleAvatar(
            backgroundColor: iconBacground,
            child: IconButton(
              onPressed: onTap,
              focusColor: iconColor,
              splashColor: toolTipBacground,
              hoverColor: iconBacground,
              icon: Icon(
                icon,
                color: iconColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
