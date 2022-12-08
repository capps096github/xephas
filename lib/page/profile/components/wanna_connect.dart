import '../../../xephas_exporter.dart';

class WannaConnect extends StatelessWidget {
  const WannaConnect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding16,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          XephasDot(),
          VerticalSpacing(of: spacing8),
          Text(
            "Wanna connect? Ping Me!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: xephasColor,
            ),
          ),
        ],
      ),
    );
  }
}
