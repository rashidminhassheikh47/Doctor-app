import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  const TextFieldItem({Key? key,this.onChange, required this.hintText}) : super(key: key);

  final String hintText;
  final dynamic onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: TextFormField(
          onChanged: onChange,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            hintText: hintText,
            fillColor: const Color(0xF9F9F9F9),
            filled: true,
            // suffixIcon: Icons.arrow_drop_down,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    );
  }
}
