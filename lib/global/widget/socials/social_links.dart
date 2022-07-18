import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import '../../constants/exporter.dart';

void openFacebook() async {
  // const fbLink = 'https://www.facebook.com/cApps20/';
  // await linkLauncher(fbLink);
}

void openTwitter() async {
  const twitterLink = 'https://twitter.com/xephas_official';
  await linkLauncher(twitterLink);
}

void openInstagram() async {
  const instagramLink = 'https://www.instagram.com/xephas_official/';
  await linkLauncher(instagramLink);
}

void openPlayStore() async {
  const playStoreLink =
      'https://play.google.com/store/apps/dev?id=8238184494150117614';
  await linkLauncher(playStoreLink);
}

void openGithub() async {
  const githubLink = 'https://github.com/capps096github';
  await linkLauncher(githubLink);
}

void callXephas() async {
  final callLink = Uri.encodeFull('tel:+256780955031');
  await linkLauncher(callLink);
}

void smsXephas() async {
  final smsLink = Uri.encodeFull('sms:+256780955031');
  await linkLauncher(smsLink);
}

void whatsappXephas() async {
  const whatsappLink = WhatsAppUnilink(
    phoneNumber: '+256758294212',
    text:
        "Hello Cephas! am checking in from your portfolio and I am interested in your services. Please contact me back.",
  );
  await linkLauncher('$whatsappLink');
}

// pininterest
void openPinterest() async {
  const pininterestLink = 'https://www.pinterest.com/official_xephas/';
  await linkLauncher(pininterestLink);
}

// linkedin
void linkedinXephas() async {
  const linkedinLink = 'https://www.linkedin.com/in/xephasofficial/';
  await linkLauncher(linkedinLink);
}

void sendMail() async {
  final platform = isXephasWeb
      ? "Web"
      : isXephasiOs
          ? 'iOS'
          : 'Android';

  const email = 'briancephasmuk@gmail.com';
  const name = "Visitor";
  const subject = '$name from The Xephas Portfolio';
  final body =
      'Hello Cephas! am checking in from your $platform portfolio and I am interested in your services. Please reply back.';
  final url = Uri.encodeFull('mailto:$email?subject=$subject&body=$body');
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    // ignore: avoid_print
    print('Could not launch $url, trying typical share');

    Share.share(body, subject: body);
  }
}

///This Opens the links
Future<void> linkLauncher(String link) async {
  if (await canLaunchUrl(Uri.parse(link))) {
    await launchUrl(Uri.parse(link));
  } else {
    throw 'Could not launch $link';
  }
}
