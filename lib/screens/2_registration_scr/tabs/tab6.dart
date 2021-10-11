import 'package:doctor_app/components/constants.dart';
import 'package:doctor_app/screens/2_registration_scr/components/reusable_dropdown_button.dart';
import 'package:flutter/material.dart';

class Tab6 extends StatefulWidget {
  const Tab6({Key? key}) : super(key: key);

  @override
  _Tab6State createState() => _Tab6State();
}

class _Tab6State extends State<Tab6> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusableDropdownButton(
          onChange: (value){},
          value: "Country",
          items: const [
            DropdownMenuItem(
              child: Text(
                "Country",
                style: TextStyle(color: Colors.grey),
              ),
              value: "Country",
            )
          ],
          hintText: "Country",
        ),
        ReusableDropdownButton(
          value: "State/City",
          items: const [
            DropdownMenuItem(
              child: Text(
                "State/City",
                style: TextStyle(color: Colors.grey),
              ),
              value: "State/City",
            )
          ],
          hintText: "State/City", onChange: (value){},
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(children: [
            Checkbox(value: true,fillColor: MaterialStateProperty.all(kPrimaryColor), onChanged: (value){}),
            const Text("All states",style: TextStyle(color: kPrimaryColor),),
          ],),
        )
      ],
    );
  }
}
