import 'package:doctor_app/components/constants.dart';
import 'package:doctor_app/screens/1_welcome/welcome.dart';
import 'package:doctor_app/screens/2_registration_scr/components/re_usable_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  static String scrId = "/Login";

  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  bgDoctorImage(size),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 250),
                height: size.height - 250,
                width: size.width,
                decoration: kBigContainerBoxDecoration,
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          buzzADoctorTitle(context),
                          buildTextField(hintText: 'Email/Phone No',),
                          buildTextField(hintText:"Password",icon: const Icon(Icons.remove_red_eye,color: kPrimaryColor,),),
                          forgotPasswordBtn(onPress: (){}),
                          loginButton(onPress: (){})
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const Divider(
                          thickness: 2,
                          color: Colors.black54,
                        ),
                        dontHaveAnAccountBtn(context:context,onPress:() {
                          Navigator.pushReplacementNamed(context, WelcomeScreen.scrId);
                        } ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row dontHaveAnAccountBtn({BuildContext? context, required Function() onPress}) {
    return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an Account?"),
                          TextButton(
                            onPressed: onPress,
                            child: Text(
                              "Sign up",
                              style: TextStyle(color:const Color(0xff20B2AA).withOpacity(0.7),),
                            ),
                          ),
                        ],
                      );
  }

  ReUsableButton loginButton({required Function() onPress}) {
    return ReUsableButton(
                          title: "Login",
                          margin: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          onPress: onPress,
                        );
  }

  Row forgotPasswordBtn({required Function() onPress}) {
    return Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: onPress,
                                child: const Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.normal),
                                )),
                            const SizedBox(
                              width: 40,
                            ),
                          ],
                        );
  }

  Padding buzzADoctorTitle(BuildContext context) {
    return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 50),
                          child: Text(
                            "buzz a doctor".toUpperCase(),
                            style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.red[900],fontWeight: FontWeight.w700),
                          ),
                        );
  }

  Container bgDoctorImage(Size size) {
    return Container(
                  height: size.height - 400,
                  width: size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/doctorPic.jpeg"),
                        fit: BoxFit.cover),
                  ),
                );
  }

  Padding buildTextField({required String hintText,Icon? icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: kPrimaryColor,width: 1)),
            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: kPrimaryColor,width: 1)),
            hintStyle: const TextStyle(color: kPrimaryColor),
            suffixIcon: icon,),
      ),
    );
  }
}
