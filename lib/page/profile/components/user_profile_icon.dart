// Project imports:
import '../../../xephas_exporter.dart';
import 'profile_pic.dart';

class UserProfileIcon extends ConsumerWidget {
  const UserProfileIcon({
    Key? key,
    required this.xephas,
  }) : super(key: key);

  final XephasMe xephas;

  @override
  Widget build(BuildContext context, ref) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomRight,
        children: [
          ProfilePic(
            border: Border.all(
              color: xephasColor,
              width: 2,
            ),
            xephas: xephas,
            radius: 80,
          ),
          //* xephas logo
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: xephasColor,
            ),
            child: Padding(
              padding: padding8,
              child: SvgPicture.asset(
                xephasLogoSvg,
                width: 20,
                height: 20,
                color: xephasWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
