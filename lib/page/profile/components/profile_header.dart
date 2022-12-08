import '../../../xephas_exporter.dart';
import 'profile_clipper.dart';
import 'profile_name_email.dart';
import 'user_profile_icon.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key, required this.xephas}) : super(key: key);
  final XephasMe xephas;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            ClipPath(
              clipper: ProfileClipper(),
              child: Container(
                color: xephasColor,
                height: profileClipperHeight,
              ),
            ),
            // make this go kinda to the bottom
            Positioned(
              bottom: -50,
              child: Center(child: UserProfileIcon(xephas: xephas)),
            ),
          ],
        ),

        // spacing
        const VerticalSpacing(of: spacing48),

        // show the name and email
        ProfileNameEmailAbout(xephas: xephas),
      ],
    );
  }
}
