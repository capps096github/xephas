import '../../../xephas_exporter.dart';

class ProfileNameEmailAbout extends StatelessWidget {
  const ProfileNameEmailAbout({
    Key? key,
    required this.xephas,
  }) : super(key: key);

  final XephasMe xephas;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding16,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const VerticalSpacing(of: spacing8),
          // name get the first name by splitting the name
          Text(
            "${xephas.name} (${xephas.preferredName})",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: xephasColor,
            ),
          ),

          // 
          const VerticalSpacing(of: spacing4),

          // gender
          Text(
            xephas.gender,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: xephasColor.withOpacity(.6),
            ),
          ),

          const VerticalSpacing(of: spacing16),

          // about
          Text(
            xephas.about,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: xephasColor.withOpacity(.8),
            ),
          ),

          // TODO add roles as per angella yu design we see
          // software engineer, UX designer, etc
        ],
      ),
    );
  }
}
