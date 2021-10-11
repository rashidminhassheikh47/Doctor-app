import 'package:doctor_app/components/constants.dart';
import 'package:doctor_app/screens/3_login_scr/login_scr.dart';
import 'package:doctor_app/screens/1_welcome/components/buttons/sign_button.dart';
import 'package:doctor_app/screens/2_registration_scr/registration_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/slide_and_model/slide_dot.dart';
import 'components/slide_and_model/slide_item.dart';
import 'components/slide_and_model/slide_model.dart';


class WelcomeScreen extends StatefulWidget {
  static String scrId = "/welcome";

  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);


  onPageChange(index) {
    setState(() {
      currentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                bgDoctorImage(size),
                Container(
                  margin: const EdgeInsets.only(top: 250),
                  height: size.height - 250,
                  width: size.width,
                  decoration: kBigContainerBoxDecoration,
                  child: Column(
                    children: [
                      slideText(),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            signInWithFacebookBtn(),
                            signInWithGoogleBtn(context),
                            signInWithEmailBtn(),
                            const Divider(
                              thickness: 1,
                              color: kPrimaryColor,
                            ),
                            alreadyHaveAnAccountAndLoginBtn(context:context, onPress: () {
                              Navigator.pushReplacementNamed(context, LogInScreen.scrId);
                            })
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row alreadyHaveAnAccountAndLoginBtn({required BuildContext context,required Function() onPress}) {
    return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Already have an Account?",style: TextStyle(color: kPrimaryColor),),
                              TextButton(
                                onPressed: onPress,
                                child: const Text(
                                  "Login",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          );
  }

  SignButton signInWithEmailBtn() {
    return const SignButton(
                            title: "Sign in with Email",
                            backgroundColor: Colors.transparent,
                            textColor: kPrimaryColor,
                            icon: Icon(
                              Icons.email,
                              color: kPrimaryColor,
                            ),
                            borderSide: BorderSide(color: kPrimaryColor),
                          );
  }

  SignButton signInWithGoogleBtn(BuildContext context) {
    return SignButton(
                            onPress: () {
                              Navigator.pushNamed(context, RegistrationScreen.scrId);
                            },
                            title: "Sign in with Google",
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            icon:  CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.redAccent,
                              child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset("assets/icons/google_logo.svg",color: Colors.white,fit: BoxFit.scaleDown,),),
                            ),
                            borderSide: const BorderSide(color: Colors.transparent),
                          );
  }

  SignButton signInWithFacebookBtn() {
    return SignButton(
                            title: "Sign in with Facebook",
                            backgroundColor: Colors.blueAccent,
                            textColor: Colors.white,
                            icon: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.transparent,
                              child: SvgPicture.asset("assets/icons/facebook_logo.svg"),
                            ),
                            borderSide: const BorderSide(color: Colors.transparent),
                          );
  }

  Expanded slideText() {
    return Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: MediaQuery.of(context).size.width,
                              child: PageView.builder(
                                itemCount: slideList.length,
                                controller: _pageController,
                                onPageChanged: onPageChange,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (ctx, i) => SlideItem(i),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int a = 0; a < slideList.length; a++)
                                  if (a == currentPage)
                                    SlideDots(true)
                                  else
                                    SlideDots(false)
                              ],
                            )
                          ],
                        ),
                      );
  }

  Stack bgDoctorImage(Size size) {
    return Stack(
                  children: [
                    Container(
                      height: size.height - 400,
                      width: size.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/doctorPic.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                );
  }
}
