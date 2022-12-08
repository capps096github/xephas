import '../socials/data.dart';
import '../../../xephas_exporter.dart';
import 'social_tile.dart';

class ProfileSocials extends StatelessWidget {
  const ProfileSocials({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: padding16,
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 550,
          mainAxisExtent: 70,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            final socialContact = socialContacts[index];
            return SocialTile(socialContact: socialContact);
          },
          childCount: socialContacts.length,
        ),
      ),
    );
  }
}
