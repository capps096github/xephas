// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

import '../../../xephas_exporter.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
    this.radius = 72,
    this.margin = const EdgeInsets.all(6.0),
    this.border,
    required this.xephas,
  }) : super(key: key);

  // redius
  final double? radius;

  // border
  final BoxBorder? border;

// margin
  final EdgeInsetsGeometry? margin;

  final XephasMe xephas;

  @override
  Widget build(BuildContext context) {
    // profile pic
    final profilePic = xephas.profilePic;

    return Hero(
      tag: userProfileTag,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          color: xephasBackground.withOpacity(.95),
          shape: BoxShape.circle,
          border: border,
        ),
        child: CircleAvatar(
          backgroundColor: xephasBackground.withOpacity(.3),
          backgroundImage: CachedNetworkImageProvider(profilePic),
          radius: radius,
        ),
      ),
    );
  }
}
