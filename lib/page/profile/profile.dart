import '../../xephas_exporter.dart';
import 'components/profile_header.dart';
import 'components/profile_socials.dart';
import 'components/wanna_connect.dart';

class XephasProfile extends StatelessWidget {
  const XephasProfile({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: const Text('#x - Bio'),
      ),
      body: CustomScrollView(
        slivers: [
          // profile
          SliverToBoxAdapter(child: ProfileHeader(xephas: xephasMe)),

          const SliverVerticalSpacing(of: spacing16),

          // wanna connect
          const SliverToBoxAdapter(child: WannaConnect()),

          // socials
          const ProfileSocials(),

          const SliverVerticalSpacing(of: spacing16),

          // add developer credits here and copyrights
        ],
      ),
    );
  }
}
