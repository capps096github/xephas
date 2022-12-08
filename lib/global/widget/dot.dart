// Project imports:


import '../../xephas_exporter.dart';

/// THis is a dot in a bullet=like format
class XephasDot extends StatelessWidget {
  const XephasDot({
    Key? key,
    this.dotColor = xephasColor,
    this.dotDiameter = 10,
    this.margin = padding4,
  }) : super(key: key);

  // color of the dot
  final Color? dotColor;

  // diameter of the dot
  final double? dotDiameter;

  // margin of the dot
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dotDiameter,
      height: dotDiameter,
      margin: margin,
      decoration: BoxDecoration(
        color: dotColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
