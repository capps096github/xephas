import '../../../xephas_exporter.dart';
import '../socials/social_contact.dart';

class SocialTile extends StatelessWidget {
  const SocialTile({
    Key? key,
    required this.socialContact,
  }) : super(key: key);

  final SocialContact socialContact;

  @override
  Widget build(BuildContext context) {
    // text Color
    final textColor = socialContact.textColor;

    // platform color
    final platformColor = socialContact.platformColor;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Tooltip(
        message: socialContact.tooltip,
        textStyle: TextStyle(color: textColor),
        decoration: BoxDecoration(
          color: platformColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Material(
          elevation: 1,
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(8),
          color: textColor,
          child: ListTile(
            tileColor: textColor,
            hoverColor: platformColor.withOpacity(.1),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            dense: true,
            leading: CircleAvatar(
              backgroundColor: platformColor,
              child: Icon(
                socialContact.icon,
                color: textColor,
              ),
            ),
            trailing: Icon(
              socialContact.trailingIcon,
              color: platformColor,
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                socialContact.handle,
                style: TextStyle(
                  color: platformColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            subtitle: Text(
              socialContact.platform,
              style: TextStyle(
                fontSize: 14,
                color: platformColor.withOpacity(.8),
              ),
            ),
            onTap: socialContact.onTap,
          ),
        ),
      ),
    );
  }
}
