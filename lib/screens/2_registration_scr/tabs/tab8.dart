import 'package:doctor_app/screens/2_registration_scr/model/text_field_item.dart';
import 'package:flutter/material.dart';

class Tab8 extends StatefulWidget {
  const Tab8({Key? key}) : super(key: key);

  @override
  _Tab8State createState() => _Tab8State();
}

class _Tab8State extends State<Tab8> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TextFieldItem(
          hintText: "Email",
        ),
        TextFieldItem(
          hintText: "Password",
        ),
        TextFieldItem(
          hintText: "Confirm Password",
        ),
      ],
    );
  }
}
