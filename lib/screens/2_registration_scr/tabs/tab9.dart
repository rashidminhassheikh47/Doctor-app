import 'package:flutter/material.dart';

class Tab9 extends StatefulWidget {
  const Tab9({Key? key}) : super(key: key);

  @override
  _Tab9State createState() => _Tab9State();
}

class _Tab9State extends State<Tab9> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: double.maxFinite,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color: const Color(0xF9F9F9F9),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: const Color(0xD5D5D5D5),
                width: 1,
              )),
          child: Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 18,
                backgroundImage:
                AssetImage("assets/icons/facebook_icon_image.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  "Facebook",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.arrow_drop_down))
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        const Divider(
          thickness: 1,
          color: Colors.grey,
          indent: 30,
          endIndent: 30,
          height: 50,
        ),
        const Text(
            "By submitting this form, you agree to our\n terms and condition and give BUZZ A\n DOCTOR consent to use your information for \n credentialing.")
      ],
    );
  }
}
