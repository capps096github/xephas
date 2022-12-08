import '../../../xephas_exporter.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding16,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 16,
          letterSpacing: 1,
          // fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
