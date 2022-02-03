import 'package:flutter/material.dart';
import 'package:hhubtest/constants.dart';
import 'package:badges/badges.dart';
import 'package:hhubtest/screens/reg.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: kPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Badge(
                    shape: BadgeShape.square,
                    badgeColor: Colors.black54,
                    borderRadius: BorderRadius.circular(15),
                    position: BadgePosition.topEnd(top: -5, end: -30),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    badgeContent: kBadge,
                    child: const Text(
                      'househub',
                      style: kCompanyName,
                    ),
                  ),
                  const Text(
                    'members login',
                    style: kPageName,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'email',
                          labelStyle: kInputLine,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'password',
                          labelStyle: kInputLine,
                        ),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.arrow_forward,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.black,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                  child: const Text(
                    'registration',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
