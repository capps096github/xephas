import '../../../xephas_exporter.dart';

class AppDetails extends StatelessWidget {
  const AppDetails({Key? key, required this.app}) : super(key: key);

  final BuiltApp app;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundStack(
        child: ExpandedScrollingColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpacing(of: 64),

            TitleAndDescription(
              title: app.name,
              description: app.description,
              textColor: app.appColor,
            ),

            //
            const VerticalSpacing(of: 64),

            // design a mobile phone mockup widget container
            Container(
              width: 360,
              height: 744,
              decoration: BoxDecoration(
                color: app.appColor,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: xephasWhite,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
