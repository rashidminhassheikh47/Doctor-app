import 'package:doctor_app/components/constants.dart';
import 'package:flutter/material.dart';

class ReUsableButton extends StatelessWidget {
  const ReUsableButton(
      {required this.onPress, required this.margin, required this.title});
  final Function() onPress;
  final EdgeInsetsGeometry margin;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      margin: margin,
      child: OutlinedButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.blueAccent),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
        ),
        onPressed: onPress,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
