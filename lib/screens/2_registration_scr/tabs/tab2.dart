
import 'package:doctor_app/screens/2_registration_scr/model/registration_views.dart';
import 'package:flutter/material.dart';

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          children: [
            genderIcon(
              imagePath: "assets/icons/male.png",
              onTap: () {},
            ),
            Image.asset("assets/icons/divider_line.png"),
            genderIcon(imagePath: "assets/icons/female.png", onTap: () {}),
          ],
        ),
    );
  }
  Expanded genderIcon({required String imagePath, required Function() onTap}) {
    return Expanded(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Image.asset(
              imagePath,
              height: 200,
            ),
          ),
        ));
  }
}
