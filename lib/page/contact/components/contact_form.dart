// ignore_for_file: avoid_print

import '../../../xephas_exporter.dart';

import 'package:fluttertoast/fluttertoast.dart';

final _formKey = GlobalKey<FormBuilderState>();

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    var formfields = [
      // name
      FormBuilderTextField(
        name: 'name',
        decoration: const InputDecoration(labelText: 'Name'),
        validator:
            FormBuilderValidators.compose([FormBuilderValidators.required()]),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
      ),
      // phone or whatsapp number
      FormBuilderTextField(
        name: 'phone',
        decoration: const InputDecoration(labelText: 'Phone'),
        validator:
            FormBuilderValidators.compose([FormBuilderValidators.required()]),
        keyboardType: TextInputType.phone,
        textInputAction: TextInputAction.next,
      ),
      // gender
      FormBuilderRadioGroup<String>(
        decoration: const InputDecoration(
          labelText: 'Gender',
          fillColor: xephasColor,
        ),
        initialValue: null,
        name: 'gender',
        onChanged: (value) {},
        validator:
            FormBuilderValidators.compose([FormBuilderValidators.required()]),
        options: [
          'Male',
          'Female',
          'Rather not to say',
        ]
            .map((lang) => FormBuilderFieldOption(
                  value: lang,
                  child: Text(lang),
                ))
            .toList(growable: false),
        controlAffinity: ControlAffinity.trailing,
      ),

      // age range
      FormBuilderRangeSlider(
        name: 'age_range',
        // validator: FormBuilderValidators.compose([FormBuilderValidators.min(context, 6)]),
        onChanged: (value) {},
        min: 0.0,
        max: 100.0,
        initialValue: const RangeValues(4, 7),
        divisions: 20,
        activeColor: xephasColor,
        inactiveColor: xephasColor.withOpacity(.3),
        decoration: const InputDecoration(labelText: 'Age Group Range'),
      ),
      // email

      // service needed (dropdown) - website, app, UI design,Grapic design, logo design, Branding etc
      FormBuilderDropdown<String>(
        name: 'service',
        decoration: const InputDecoration(
          labelText: 'Service Needed',
          hintText: 'Select a service you need me to do for you',
        ),
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
        ]),
        items: [
          'Website',
          'Mobile App',
          'Cross Platform App',
          'UI Design',
          'Graphic Design',
          'Logo Design',
          'Branding',
        ]
            .map((gender) => DropdownMenuItem(
                  alignment: AlignmentDirectional.center,
                  value: gender,
                  child: Text(gender),
                ))
            .toList(),
        onChanged: (val) {
          // setState(() {
          //   _genderHasError =
          //       !(_formKey.currentState?.fields['gender']?.validate() ??
          //           false);
          // });
        },
        valueTransformer: (val) => val?.toString(),
      ),

      // date by which you need the service
      FormBuilderDateTimePicker(
        name: 'date',
        initialEntryMode: DatePickerEntryMode.calendar,
        initialValue: DateTime.now(),
        inputType: InputType.both,
        decoration: InputDecoration(
          labelText: 'Date by which you need the service',
          suffixIcon: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              _formKey.currentState!.fields['date']?.didChange(null);
            },
          ),
        ),
        // initialTime: const TimeOfDay(hour: 8, minute: 0),
        // locale: const Locale.fromSubtags(languageCode: 'fr'),
      ),
      // message (optional)
      FormBuilderTextField(
        name: 'message',
        decoration: const InputDecoration(labelText: 'Message'),
        keyboardType: TextInputType.multiline,
        maxLines: 3,
        textInputAction: TextInputAction.next,
      ),

      // accept terms and conditions
      FormBuilderCheckbox(
        name: 'accept_terms',
        initialValue: false,
        onChanged: (value) {
          Fluttertoast.showToast(
            msg: "This is Center Short Toast",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        },
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'By submitting this form, you agree to the ',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'Xephas Privacy Policy, ',
                style: TextStyle(color: Colors.blue),
                // Flutter doesn't allow a button inside a button
                // https://github.com/flutter/flutter/issues/31437#issuecomment-492411086
                /*
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('launch url');
                                },
                              */
              ),
              TextSpan(
                text: 'and ',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'Terms and Conditions',
                style: TextStyle(color: Colors.blue),
                // Flutter doesn't allow a button inside a button
                // https://github.com/flutter/flutter/issues/31437#issuecomment-492411086
                /*
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('launch url');
                                },
                              */
              ),
            ],
          ),
        ),
        validator: FormBuilderValidators.equal(
          true,
          errorText: 'You must accept terms and conditions to continue',
        ),
      ),
      // send button
      AppButton(
        text: "Contact Xephas",
        onTap: () {
          if (_formKey.currentState!.saveAndValidate()) {
            print(_formKey.currentState!.value);
          } else {
            print("validation failed");
          }
        },
      ),
    ];
    return FormBuilder(
      key: _formKey,
      onChanged: () {
        _formKey.currentState!.save();
        debugPrint(_formKey.currentState!.value.toString());
      },
      autovalidateMode: AutovalidateMode.disabled,
      child: Column(
        children: List.generate(
          formfields.length,
          (index) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              formfields[index],
              const VerticalSpacing(of: 16),
            ],
          ),
        ),
      ),
    );
  }
}
