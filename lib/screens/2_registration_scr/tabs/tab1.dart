
import 'package:doctor_app/screens/2_registration_scr/model/registration_views.dart';
import 'package:doctor_app/screens/2_registration_scr/model/text_field_item.dart';
import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                for (int i = 0;
                    i <= firstRegistrationFieldHintText.length - 1;
                    i++)
                  TextFieldItem(
                    hintText: firstRegistrationFieldHintText[i],

                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
