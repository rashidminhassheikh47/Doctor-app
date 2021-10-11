
import 'package:doctor_app/screens/2_registration_scr/components/reusable_dropdown_button.dart';
import 'package:doctor_app/screens/2_registration_scr/model/text_field_item.dart';
import 'package:flutter/material.dart';

class Tab7 extends StatefulWidget {
  const Tab7({Key? key}) : super(key: key);

  @override
  _Tab7State createState() => _Tab7State();
}

class _Tab7State extends State<Tab7> {
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
          value: "State",
          items: const [
            DropdownMenuItem(
              child: Text(
                "State",
                style: TextStyle(color: Colors.grey),
              ),
              value: "State",
            )
          ],
          hintText: "State", onChange: (value){},
        ),
        ReusableDropdownButton(
          value: "Town/City",
          items: const [
            DropdownMenuItem(
              child: Text(
                "Town/City",
                style: TextStyle(color: Colors.grey),
              ),
              value: "Town/City",
            )
          ],
          hintText: "Town/City", onChange: (value){},
        ),
        const TextFieldItem(hintText: "Address Line 1",),
        const TextFieldItem(hintText: "Address Line 2",)
      ],
    );
  }
}
