import 'package:doctor_app/screens/2_registration_scr/components/re_usable_btn.dart';
import 'package:doctor_app/screens/2_registration_scr/model/registration_views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Views extends StatefulWidget {
  final int index;
  final Function() onPress;

  const Views({Key? key, required this.index, required this.onPress})
      : super(key: key);

  @override
  State<Views> createState() => _ViewsState();
}

class _ViewsState extends State<Views> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        registrationTabList[widget.index].titleText,
        Expanded(
          flex: 1,
          child: Container(
              alignment: Alignment.topCenter,
              child: registrationTabList[widget.index].view),
        ),
        ReUsableButton(
          title: registrationTabList[widget.index].buttonTitle,
          onPress: widget.onPress,
          margin: const EdgeInsets.all(50),
        ),
      ],
    );
  }
}
