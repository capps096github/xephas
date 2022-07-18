import '../../xephas_exporter.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage(this.error, {super.key});
  final Exception error;

  @override
  Widget build(BuildContext context) {
    // if we are on mobile
    final isMobile = XephasResponsive.isMobile(context) ||
        XephasResponsive.isSmallMobile(context) ||
        XephasResponsive.isMediumMobile(context);

    return Scaffold(
      body: BackgroundStack(
        child: ExpandedScrollingColumn(
          key: ValueKey(isMobile),
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            const VerticalSpacing(of: 64),

            // name
            Text(
              "Oops, I lost ya!",
              style: TextStyle(
                fontSize: 28.sp,
                color: xephasColor,
                height: 1,
                fontWeight: FontWeight.w900,
              ),
            ),
            //
            const VerticalSpacing(of: 40),

            // short description of Xephas
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    error.toString(),
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: xephasError,
                      height: 1.2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  //
                  const VerticalSpacing(of: 40),

                  Text(
                    "No worries, I gotcha! \nGet back to safety by clicking the Button below or the Xephas Logo.",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: xephasColor,
                      height: 1.2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            //
            const VerticalSpacing(of: 40),

            AppButton.small(
              onTap: () => context.go(AppRouter.initialPath),
              text: "Get back to Safety",
              iconData: Icons.arrow_forward,
            ),

            const VerticalSpacing(of: 40),

            Text(
              "or",
              style: TextStyle(
                fontSize: 16.sp,
                color: xephasColor,
                height: 1.2,
                fontWeight: FontWeight.w500,
              ),
            ),

            //
            const VerticalSpacing(of: 40),

            //
            const XephasSocialIcons(),

            //
            const VerticalSpacing(of: 40),
          ],
        ),
      ),
    );
  }
}
