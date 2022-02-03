import 'package:flutter/material.dart';
import 'package:hhubtest/screens/welcome_screen.dart';
import "screens/login.dart";
import 'screens/reg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Hhub());
}

class Hhub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
