import 'package:doctor_app/components/constants.dart';
import 'package:doctor_app/screens/2_registration_scr/model/registration_views.dart';
import 'package:doctor_app/screens/2_registration_scr/model/views.dart';
import 'package:flutter/material.dart';
import 'package:status_change/status_change.dart';

class RegistrationScreen extends StatefulWidget {
  static String scrId = "registration_form";
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildAppBar(onPress: () {}),
            Container(
              padding: const EdgeInsets.only(top: 20),
              height: size.height - 100,
              decoration: kSlideBoxDecoration,
              child: Column(children: [
                // Container(
                //   height: 60,
                //   width: size.width / 1.5,
                //   child: StatusChange.tileBuilder(
                //     theme: StatusChangeThemeData(
                //       direction: Axis.horizontal,
                //       connectorTheme:
                //           const ConnectorThemeData(space: 1.0, thickness: 1.0),
                //     ),
                //     builder: StatusChangeTileBuilder.connected(
                //       itemWidth: (index) => size.width / registrationFields.length,
                //       indicatorWidgetBuilder: (context, index) {
                //         if (index <=  currentIndex) {
                //           return DotIndicator(
                //             size: 25.0,
                //             border: Border.all(width: 1),
                //             child: Container(
                //               child: const Icon(
                //                 Icons.check,
                //                 color: Colors.white,
                //                 size: 18,
                //               ),
                //               decoration: const BoxDecoration(
                //                 shape: BoxShape.circle,
                //                 color: Colors.black,
                //               ),
                //             ),
                //           );
                //         } else {
                //           return const OutlinedDotIndicator(
                //             size: 25,
                //             borderWidth: 1.0,
                //             color: todoColor,
                //           );
                //         }
                //       },
                //       lineWidgetBuilder: (index) {
                //           if (index == currentIndex) {
                //             final prevColor = getColor(index - 1);
                //             final color = getColor(index);
                //             var gradientColors;
                //             gradientColors = [
                //               prevColor,
                //               Color.lerp(prevColor, color, 0.5)
                //             ];
                //             return DecoratedLineConnector(
                //               decoration: BoxDecoration(
                //                 gradient: LinearGradient(
                //                   colors: gradientColors,
                //                 ),
                //               ),
                //             );
                //           } else {
                //             return SolidLineConnector(
                //               color: getColor(index),
                //             );
                //           }
                //       },
                //       itemCount: registrationFields.length,
                //     ),
                //   ),
                // ),
                dummyChekboxSeries(),
                const Divider(),
                textFieldViews(),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Row dummyChekboxSeries() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      for(int i = 0; i < registrationTabList.length; i++)
        Container(height: 25,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(5),
          width: 30,
          decoration: const BoxDecoration(
            shape: BoxShape.circle, color: kPrimaryColor,),
          child: const Icon(Icons.check, color: Colors.white,size: 15,),)
    ],);
  }

  Container buildAppBar({required Function() onPress}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            splashRadius: 25,
            onPressed: onPress,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          Image.asset("assets/icons/buzz_a_doctor_logo.png"),
          const SizedBox(width: 40),
        ],
      ),
    );
  }

  Expanded textFieldViews() {
    return Expanded(
      flex: 1,
      child: Views(
        index: _currentIndex,
        onPress: () {
          setState(() {
            if (_currentIndex <= registrationTabList.length - 1) {
              _currentIndex++;
              print(_currentIndex);
            } else {
              // Navigator.pushNamed(context, BuildBottomNavigationBar.scr);
              print(_currentIndex);
            }
          });
        },
      ),
    );
  }
}
