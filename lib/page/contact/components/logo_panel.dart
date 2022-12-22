import '../../../xephas_exporter.dart';

class LogoPanel extends StatelessWidget {
  const LogoPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: xephasColor,
      // logo
      child: Center(
        child: Container(
          margin: margin16,
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: xephasWhite,
          ),
          child: Container(
            margin: const EdgeInsets.all(spacing4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 4,
                color: xephasColor,
              ),
              color: xephasTransparent,
            ),
            child: Center(
              child: Padding(
                padding: padding8,
                child: SvgPicture.asset(
                  xephasLogoSvg,
                  width: 150,
                  height: 150,
                  color: xephasColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
