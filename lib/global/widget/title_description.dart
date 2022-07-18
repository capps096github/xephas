import '../../xephas_exporter.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    Key? key,
    required this.title,
    required this.description,
    this.textColor = xephasColor,
    this.descriptionColor,
  }) : super(key: key);

  final String title, description;
  final Color textColor;
  final Color? descriptionColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // name
        Text(
          title,
          style: TextStyle(
            fontSize: 28.sp,
            color: textColor,
            height: 1,
            fontWeight: FontWeight.w900,
          ),
        ),

        const VerticalSpacing(of: 40),

        // short description of Xephas
        Padding(
          padding: const EdgeInsets.only(right: 200),
          child: Text(
            description,
            style: TextStyle(
              fontSize: 16.sp,
              color: descriptionColor??textColor,
              height: 1.2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
