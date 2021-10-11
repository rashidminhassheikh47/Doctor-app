import 'package:doctor_app/screens/2_registration_scr/components/reusable_dropdown_button.dart';
import 'package:flutter/material.dart';

class Tab5 extends StatefulWidget {
  const Tab5({Key? key}) : super(key: key);

  @override
  _Tab5State createState() => _Tab5State();
}

class _Tab5State extends State<Tab5> {
  @override
  Widget build(BuildContext context) {
    return ReusableDropdownButton(
      value: "Select area of speciality",
      items: const [
        DropdownMenuItem(
          child: Text(
            "Select area of speciality ",
            style: TextStyle(color: Colors.grey),
          ),
          value: "Select area of speciality",
        )
      ],
      hintText: "Select area of speciality ", onChange: (value){},
    );
  }
}
