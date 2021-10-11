import 'dart:ui';

import 'package:doctor_app/components/constants.dart';
import 'package:doctor_app/screens/2_registration_scr/components/reusable_dropdown_button.dart';
import 'package:doctor_app/screens/2_registration_scr/model/text_field_item.dart';
import 'package:doctor_app/screens/2_registration_scr/tabs/tab1.dart';
import 'package:doctor_app/screens/2_registration_scr/tabs/tab2.dart';
import 'package:doctor_app/screens/2_registration_scr/tabs/tab3.dart';
import 'package:doctor_app/screens/2_registration_scr/tabs/tab4.dart';
import 'package:doctor_app/screens/2_registration_scr/tabs/tab5.dart';
import 'package:doctor_app/screens/2_registration_scr/tabs/tab6.dart';
import 'package:doctor_app/screens/2_registration_scr/tabs/tab7.dart';
import 'package:doctor_app/screens/2_registration_scr/tabs/tab8.dart';
import 'package:doctor_app/screens/2_registration_scr/tabs/tab9.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpFiledViews {
  final Widget view;
  final String buttonTitle;
  final Widget titleText;

  SignUpFiledViews(
      {required this.titleText, required this.view, required this.buttonTitle});
}

List<SignUpFiledViews> registrationTabList = [
  SignUpFiledViews(titleText: titleText("What is your name?"), view: const Tab1(), buttonTitle: "Next"),
  SignUpFiledViews(titleText: titleText("What is your gender?"), view: const Tab2(), buttonTitle: "Next"),
  SignUpFiledViews(titleText: titleText("When were you born?"), view: const Tab3(), buttonTitle: "Next"),
  SignUpFiledViews(titleText: titleText("What is your phone number?"), view: const Tab4(), buttonTitle: "Next"),
  SignUpFiledViews(titleText: titleText("What are your areas of speciality?"), view: const Tab5(), buttonTitle: "Next"),
  SignUpFiledViews(titleText: titleText("Where are you licenced to practice?"), view: const Tab6(), buttonTitle: "Next"),
  SignUpFiledViews(titleText: titleText("What is your address?"), view: const Tab7(), buttonTitle: "Next"),
  SignUpFiledViews(titleText: titleText("Almost done"), view: const Tab8(), buttonTitle: "Next"),
  SignUpFiledViews(titleText: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      titleText("How did you hear about us?",),
      const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 30.0),
        child:  Text("Please Select Option",style: TextStyle(color: kPrimaryColor),),
      ),
    ],
  ), view: const Tab9(), buttonTitle: "Submit"),
];

Container titleText(String title) {
  return Container(
    margin: const EdgeInsets.only(left: 30),
    alignment: Alignment.centerLeft,
    width: double.maxFinite,
    height: 80,
    child: Text(
      title,
      style: const TextStyle(fontSize: 16,color: kPrimaryColor, fontWeight: FontWeight.w400),
    ),
  );
}

const List<String> firstRegistrationFieldHintText = [
  "First name",
  "Surname",
];
