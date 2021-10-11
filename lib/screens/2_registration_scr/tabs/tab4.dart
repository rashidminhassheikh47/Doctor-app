import 'package:doctor_app/screens/2_registration_scr/model/registration_views.dart';
import 'package:flutter/material.dart';

class Tab4 extends StatefulWidget {
  const Tab4({Key? key}) : super(key: key);

  @override
  _Tab4State createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: const Color(0xF9F9F9F9),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: const Color(0xD5D5D5D5),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xD5D5D5D5),
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            height: 35,
            width: 55,
            child: DropdownButton(
              onChanged: (value) {

              },
              underline: Container(),
              value: "assets/icons/england.png",
              items: [
                DropdownMenuItem(
                  child: Image.asset("assets/icons/england.png"),
                  value: "assets/icons/england.png",

                ),
              ],
            ),
          ),
          countryCode(),
          verticalDivider(),
          phoneNumberTextField(),
        ],
      ),
    );
  }
  Padding countryCode() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "+92",
        style: TextStyle(color: Colors.grey, fontSize: 18),
      ),
    );
  }
  SizedBox phoneNumberTextField() {
    return const SizedBox(
      width: 150,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Phone Number",
          border: InputBorder.none,
        ),
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }
  Padding verticalDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Text(
        "|",
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),
      ),
    );
  }
}
