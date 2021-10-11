import 'package:doctor_app/screens/3_login_scr/login_scr.dart';
import 'package:doctor_app/screens/1_welcome/welcome.dart';
import 'package:doctor_app/screens/2_registration_scr/registration_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.scrId,
      routes: {
        WelcomeScreen.scrId: (context) => const WelcomeScreen(),
        RegistrationScreen.scrId: (context) => const RegistrationScreen(),
        LogInScreen.scrId: (context) => const LogInScreen(),
      },
    );
  }
}
