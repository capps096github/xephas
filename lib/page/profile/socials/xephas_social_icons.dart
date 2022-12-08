import '../../../xephas_exporter.dart';
import 'data.dart';
import 'social_icon.dart';

///These are icons for the Calcut and C APPS Social Media Accounts
class XephasSocialIcons extends StatelessWidget {
  const XephasSocialIcons({
    Key? key,
    this.textColor = xephasColor,
    this.callToAction = "Ping Me! @xephas_official, Let's Connect! ",
  }) : super(key: key);
  final Color textColor;
  final String callToAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          callToAction,
          style: TextStyle(
            color: textColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w900,
          ),
        ),
        const VerticalSpacing(of: 20),
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 5,
          runSpacing: 5,
          children: socialContacts.map((socialContact) {
            return SocialIcon(
              toolTip: socialContact.tooltip,
              toolTipTextColor: socialContact.textColor,
              toolTipBacground: socialContact.platformColor,
              iconColor: socialContact.textColor,
              iconBacground: socialContact.platformColor,
              onTap: socialContact.onTap,
              icon: socialContact.icon,
            );
          }).toList(),
        ),
      ],
    );
  }
}
