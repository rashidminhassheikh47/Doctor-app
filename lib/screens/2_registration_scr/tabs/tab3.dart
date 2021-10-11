
import 'package:doctor_app/components/constants.dart';
import 'package:doctor_app/screens/2_registration_scr/model/registration_views.dart';
import 'package:doctor_app/screens/2_registration_scr/model/text_field_item.dart';
import 'package:flutter/material.dart';

class Tab3 extends StatefulWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          dropDownButton(
            value: "2001",
            hintText: 'YYY',
            items: const [
              DropdownMenuItem(
                child: Text("2001"),
                value: "2001",
              ),
              DropdownMenuItem(
                child: Text("2002"),
                value: "2002",
              ),
            ],
          ),
          dropDownButton(
            value: "January",
            hintText: 'MM',
            items: const [
              DropdownMenuItem(
                child: Text("January"),
                value: "January",
              ),
              DropdownMenuItem(
                child: Text("February"),
                value: "February",
              ),
            ],
          ),
          dropDownButton(
            value: "01",
            hintText: 'DD',
            items: const [
              DropdownMenuItem(
                child: Text("01"),
                value: "01",
              ),
              DropdownMenuItem(
                child: Text("02"),
                value: "02",
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Image.asset("assets/icons/calendar.png"),
          )
        ],
      ),
    );
  }
  Expanded dropDownButton(
      {required String value,
        required String hintText,
        required List<DropdownMenuItem<String>> items}) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        height: 40,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        decoration: kSmallRoundedBoxDecoration.copyWith(
          border: Border.all(color: Colors.grey),
        ),
        child: DropdownButton(
          value: value,
          onChanged: (value) {},
          underline: Container(
            color: Colors.white,
          ),
          hint: Text(hintText),
          items: items,
        ),
      ),
    );
  }
}

