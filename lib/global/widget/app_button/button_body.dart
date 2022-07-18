import '../../../xephas_exporter.dart';

class ButtonBody extends StatelessWidget {
  const ButtonBody({
    Key? key,
    required this.buttonColor,
    required this.toolTip,
    required this.text,
    required this.textColor,
    required this.iconData,
    required this.onTap,
    required this.isHovered,
    this.iconWidget,
    required this.isSmallButton,
    this.tooltipTextColor,
    this.tooltipColor,
  }) : super(key: key);

  final bool isHovered, isSmallButton;

  ///Button Colors
  final Color textColor, buttonColor;
  final IconData? iconData;
  final String text;

  final Widget? iconWidget;

  /// tooltip colors
  final Color? tooltipTextColor, tooltipColor;
  final String? toolTip;

  ///Action on tap
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final buttonTextStyle = Theme.of(context)
        .textTheme
        .button!
        .copyWith(fontWeight: FontWeight.w900);

    VisualDensity density = Theme.of(context).visualDensity;

    // if we are on mobile
    final isMobile = XephasResponsive.isMobile(context) ||
        XephasResponsive.isSmallMobile(context) ||
        XephasResponsive.isMediumMobile(context);

    // screen width
    final width = MediaQuery.of(context).size.width;

    /// True if It has an Icon
    final hasIconData = (iconData != null);
    final hasIconWidget = (iconWidget != null);

    //
    return AnimatedContainer(
      duration: quarterSeconds,
      width: isSmallButton ? null : (isMobile ? width : width * .75),

      // margin: const EdgeInsets.all(8),
      child: Tooltip(
        message: toolTip ?? text,
        textStyle: TextStyle(color: tooltipTextColor ?? buttonColor),
        decoration: BoxDecoration(
          color: tooltipColor ?? textColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: (hasIconData || hasIconWidget)
            ? TextButton.icon(
                onPressed: onTap,
                style: TextButton.styleFrom(
                  backgroundColor: buttonColor,
                  primary: textColor,
                  // elevation: isHovered ? 2 : 0,
                  shadowColor: textColor,
                  visualDensity: density,
                  textStyle: buttonTextStyle,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultSpacing8),
                  ),
                ),
                label: ButtonText(text: text),
                icon: hasIconData
                    ? Icon(iconData, color: textColor)
                    : iconWidget!,
              )
            : TextButton(
                onPressed: onTap,
                style: TextButton.styleFrom(
                  backgroundColor: buttonColor,
                  primary: textColor,
                  // elevation: isHovered ? 2 : 0,
                  visualDensity: density,
                  shadowColor: textColor,
                  textStyle: buttonTextStyle,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultSpacing8),
                  ),
                ),
                child: ButtonText(text: text),
              ),
      ),
    );
  }
}
