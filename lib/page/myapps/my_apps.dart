import '../../xephas_exporter.dart';

class TheXephasApps extends StatelessWidget {
  const TheXephasApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if we are on mobile
    final isMobile = XephasResponsive.isMobile(context) ||
        XephasResponsive.isSmallMobile(context) ||
        XephasResponsive.isMediumMobile(context);

    //
    return Scaffold(
      body: BackgroundStack(
          child: Container(
        // color: Colors.blue,
        child: ExpandedScrollingColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          key: ValueKey(isMobile),
          children: const [
            //
            VerticalSpacing(of: 64),

            TitleAndDescription(
              title: "I build Cross-platform apps!",
              description:
                  "With over 3 years of experience in cross-platform app development with Flutter, I can build apps for iOS, Android, Web, Windows, MacOs, and Linux.\n\nI have a passion for creating beautiful, intuitive, and user-friendly experiences.\n\nI am also a fan of the open-source community and I am always looking for new ways to improve my skills and knowledge.",
              textColor: xephasBlue,
              descriptionColor: xephasColor,
            ),

            //
            VerticalSpacing(of: 64),

            //
            //
            XephasSocialIcons(
              textColor: xephasBlue,
              callToAction:
                  "Need an App? Hit Me Up! @xephas_official, Let's Connect!",
            ),
          ],
        ),
      )),
    );
  }
}
