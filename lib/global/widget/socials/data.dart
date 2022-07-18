import 'package:flutter/cupertino.dart';

import '../../../xephas_exporter.dart';
import 'social_contact.dart';

final List<SocialContact> socialContacts = [
  SocialContact(
    icon: Ionicons.logo_google_playstore,
    trailingIcon: Ionicons.apps,
    label: "THE C APPS",
    socialColor: Colors.greenAccent[700]!,
    onTap: openPlayStore,
    tooltip: "Explore other Cephas APPS on the Google Playstore",
  ),
  // pinterest
  SocialContact(
    icon: Ionicons.logo_pinterest,
    trailingIcon: Ionicons.logo_pinterest,
    label: "Pinterest",
    socialColor: Colors.redAccent[700]!,
    onTap: openPinterest,
    tooltip: "I gat some pins for you on Pinterest",
  ),

  // linkedin
  SocialContact(
    icon: Ionicons.logo_linkedin,
    trailingIcon: Ionicons.logo_linkedin,
    label: "LinkedIn",
    socialColor: Colors.blueAccent[700]!,
    onTap: linkedinXephas,
    tooltip: "Check out my LinkedIn profile",
  ),
  // SocialContact(
  //   icon: Ionicons.logo_facebook,
  //   trailingIcon: CupertinoIcons.hand_thumbsup_fill,
  //   label: "C APPS, Inc.",
  //   textColor: xephasBlue,
  //   onTap: openFacebook,
  //   tooltip: "Like THE C APPS TEAM PAGE on Facebook",
  // ),
  SocialContact(
    icon: Ionicons.logo_instagram,
    trailingIcon: Icons.favorite,
    label: "@xephas_official",
    socialColor: xephasPink,
    onTap: openInstagram,
    tooltip: "Follow Me on Instagram",
  ),
  SocialContact(
    icon: Ionicons.logo_twitter,
    trailingIcon: CupertinoIcons.arrow_2_squarepath,
    label: "@xephas_official",
    socialColor: xephasLightBlue,
    onTap: openTwitter,
    tooltip: "Follow Me on Twitter",
  ),
  SocialContact(
    icon: Ionicons.logo_github,
    trailingIcon: Ionicons.git_network_outline,
    label: "@capps096github",
    socialColor: xephasColor,
    onTap: openGithub,
    tooltip: "Visit Me on Github",
  ),
  SocialContact(
    icon: Ionicons.mail_unread,
    trailingIcon: Ionicons.mail_open_outline,
    label: "briancephasmuk@gmail.com",
    socialColor: xephasError,
    onTap: sendMail,
    tooltip: "Send Me an Email",
  ),
  SocialContact(
    icon: Ionicons.logo_whatsapp,
    trailingIcon: Icons.verified,
    label: "Chat With Xephas on WhatsApp",
    socialColor: Colors.teal[900]!,
    onTap: whatsappXephas,
    tooltip: "DM! Let's Chat on Whatsapp",
  ),
  SocialContact(
    icon: Icons.phone_in_talk,
    trailingIcon: CupertinoIcons.phone_arrow_down_left,
    label: "Call Xephas",
    socialColor: Colors.blueGrey[900]!,
    onTap: callXephas,
    tooltip: "Ping Me up, let's talk",
  ),
  SocialContact(
    icon: Ionicons.chatbox_ellipses_outline,
    trailingIcon: CupertinoIcons.app_badge,
    label: "Send Me an SMS",
    socialColor: xephasMaroon,
    onTap: smsXephas,
    tooltip: "Send THE C APPS TEAM a DM via SMS",
  ),
];
