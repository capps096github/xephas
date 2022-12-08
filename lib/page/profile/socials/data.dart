import 'package:flutter/cupertino.dart';

import '../../../xephas_exporter.dart';
import 'social_contact.dart';

final List<SocialContact> socialContacts = [
  SocialContact(
    icon: Ionicons.logo_google_playstore,
    trailingIcon: CupertinoIcons.rectangle_3_offgrid_fill,
    platform: "Gooogle Play",
    handle: "THE C APPS TEAM",
    platformColor: Colors.greenAccent[700]!,
    onTap: openPlayStore,
    tooltip: "Explore other Cephas APPS on the Google Playstore",
  ),


  // linkedin
  SocialContact(
    icon: Ionicons.logo_linkedin,
    trailingIcon: CupertinoIcons.person_badge_plus_fill,
    platform: "LinkedIn",
    handle: "@xephasofficial",
    platformColor: Colors.indigo[700]!,
    onTap: linkedinXephas,
    tooltip: "Check out my LinkedIn profile",
  ),
    // pinterest
  SocialContact(
    icon: Ionicons.logo_pinterest,
    trailingIcon: CupertinoIcons.pin_fill,
    platform: "Pinterest",
    handle: "@official_xephas",
    platformColor: Colors.redAccent[700]!,
    onTap: openPinterest,
    tooltip: "I gat some pins for you on Pinterest",
  ),
  SocialContact(
    icon: Ionicons.logo_facebook,
    trailingIcon: CupertinoIcons.hand_thumbsup_fill,
    platform: "Facebook",
    handle: "@officialxephas",
    platformColor: Colors.blueAccent[700]!,
    onTap: openFacebook,
    tooltip: "Be a Friend on Facebook",
  ),
  SocialContact(
    icon: Ionicons.logo_instagram,
    trailingIcon: CupertinoIcons.heart,
    platform: "Instagram",
    handle: "@xephas_official",
    platformColor: xephasPink,
    onTap: openInstagram,
    tooltip: "Follow Me on Insta",
  ),
  SocialContact(
    icon: Ionicons.logo_twitter,
    trailingIcon: CupertinoIcons.arrow_2_squarepath,
    handle: "@xephas_official",
    platform: "Twitter",
    platformColor: xephasLightBlue,
    onTap: openTwitter,
    tooltip: "Follow Me on Twitter",
  ),
  SocialContact(
    icon: Ionicons.logo_github,
    trailingIcon: Ionicons.git_network_outline,
    handle: "@capps096github",
    platform: "Github",
    platformColor: xephasColor,
    onTap: openGithub,
    tooltip: "Visit Me on Github",
  ),

  SocialContact(
    icon: Ionicons.mail_unread,
    trailingIcon: Ionicons.mail_open_outline,
    handle: "briancephasmuk@gmail.com",
    platform: "Email",
    platformColor: xephasError,
    onTap: sendMail,
    tooltip: "Send Me an Email",
  ),
  SocialContact(
    icon: Ionicons.logo_whatsapp,
    trailingIcon: CupertinoIcons.paperplane,
    handle: "+256758294212",
    platform: "WhatsApp",
    platformColor: Colors.teal[900]!,
    onTap: whatsappXephas,
    tooltip: "DM! Let's Chat on Whatsapp",
  ),
  SocialContact(
    icon: Icons.phone_in_talk,
    trailingIcon: CupertinoIcons.phone_arrow_down_left,
    handle: "+256758294212",
    platform: "Calls Only",
    platformColor: Colors.blueGrey[900]!,
    onTap: callXephas,
    tooltip: "Ping Me up, let's talk",
  ),
  SocialContact(
    icon: Ionicons.chatbox_ellipses_outline,
    trailingIcon: CupertinoIcons.app_badge,
    platform: "SMS",
    handle: "+256758294212",
    platformColor: xephasMaroon,
    onTap: smsXephas,
    tooltip: "Let's text via SMS",
  ),
];
