import 'package:doctor_app/components/constants.dart';
import 'package:flutter/material.dart';

class ReusableDropdownButton extends StatelessWidget {
  const ReusableDropdownButton({
    Key? key,required this.value,required this.onChange, required this.hintText,required  this.items
  }) : super(key: key);

final String value;
final String hintText;
final dynamic onChange;
final List<DropdownMenuItem<String>> items;


  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
      height: 40,
      width: double.maxFinite,
      decoration: kSmallRoundedBoxDecoration.copyWith(border: Border.all(color: Colors.grey)),
      child: DropdownButton(
        value: value,
        hint: Text(hintText),
        icon: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Icon(Icons.arrow_drop_down),
        ),
        onChanged: onChange,
        underline: Container(),
        items: items,
      ),
    );
  }
}