import '../../xephas_exporter.dart';
import 'widget/home_body.dart';

class XephasHome extends StatelessWidget {
  const XephasHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //TODO we cud add an app bar with a share button here
      body: BackgroundStack(child: HomeBody()),
    );
  }
}
