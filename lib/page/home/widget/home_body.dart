import '../../../xephas_exporter.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if we are on mobile
    final isMobile = XephasResponsive.isMobile(context) ||
        XephasResponsive.isSmallMobile(context) ||
        XephasResponsive.isMediumMobile(context);

    //
    return ExpandedScrollingColumn(
      key: ValueKey(isMobile),
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        //
        VerticalSpacing(of: 64),

        TitleAndDescription(
          title: "Hellos,\nIt's Xephas Brian here!",
          description:
              "Originally known as Mugisa Brian,\nam a Software Engineer with an ultimate experience in Cross-Platform App Development and an astounding passion for Graphics and UX Design.\n\nMy purpose is to design and develop experiences that improve people's lives.",
        ),

        //
        VerticalSpacing(of: 64),

        //
        XephasSocialIcons(),

        //
        VerticalSpacing(of: 64),
      ],
    );
  }
}
