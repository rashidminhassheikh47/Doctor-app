import 'package:doctor_app/components/constants.dart';
import 'package:doctor_app/screens/1_welcome/components/slide_and_model/slide_model.dart';
import 'package:flutter/material.dart';


class SlideItem extends StatelessWidget {
  final int index;

  const SlideItem(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            slideList[index].title.toUpperCase(),
            style: Theme.of(context).textTheme.headline6!.copyWith(color: const Color(0xff20B2AA),),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            slideList[index].description,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: kPrimaryColor,
                fontSize: 14
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
