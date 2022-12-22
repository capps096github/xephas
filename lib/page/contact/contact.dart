import '../../xephas_exporter.dart';
import 'components/contact_form.dart';
import 'components/logo_panel.dart';

class XephasContact extends StatelessWidget {
  const XephasContact({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO make responsive
    // Use Email package to send us an email, or write this message to cloud db, and then in our app we can get it under notifications
    return Scaffold(
      body: Row(
        children: [
          // cover
          const Expanded(child: LogoPanel()),

          //
          Expanded(
            flex: 3,
            child: Container(
              color: xephasWhite,
              padding: padding16,
              child: ListView(
                children: const [
                  Text(
                    'Get in touch. Contact Xephas ...',
                  ),
                  TitleAndDescription(
                    title: "Let's Connect!",
                    description:
                        "Get in touch and I'll get back to you as soon as possible",
                  ),
                  VerticalSpacing(of: 24),

                  // form
                  ContactForm(),
                 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
