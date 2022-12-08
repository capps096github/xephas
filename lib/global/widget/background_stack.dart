import '../../xephas_exporter.dart';

class BackgroundStack extends StatelessWidget {
  const BackgroundStack({
    Key? key,
    required this.child,
  }) : super(key: key);

  // foregroundChild
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // logo at top left
        Positioned(
          left: -100,
          top: -100,
          child: InkWell(
            onTap: () => context.go(homePath),
            customBorder: const CircleBorder(),
            child: const Image(
              image: AssetImage("images/xephas_enhance.png"),
              height: 350,
              width: 350,
            ),
          ),
        ),

        // logo at top left
        Positioned(
          right: -200,
          top: 0,
          bottom: -100,
          child: InkWell(
            onTap: () => context.go(homePath),
            customBorder: const CircleBorder(),
            child: Image.asset(
              // XephasAssets.xephasAvatarEnhanced,
              "images/xephas_avatar_enhanced.png",
              height: 600,
              width: 600,
            ),
          ),
        ),

        //
        Padding(
          padding: const EdgeInsets.only(
            left: 240,
            right: 180,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: "Screen ${child.toString()}",
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
