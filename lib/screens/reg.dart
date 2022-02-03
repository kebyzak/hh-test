import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hhubtest/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 120, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'househub',
                    style: kCompanyName,
                  ),
                  Text(
                    'registration',
                    style: kPageName,
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'email',
                      labelStyle: kInputLine,
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'password',
                      labelStyle: kInputLine,
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.check_box_sharp,
                              size: 18,
                              color: Colors.blue,
                            ),
                          ),
                          TextSpan(
                            text: " agree with ",
                            style: TextStyle(
                              color: Colors.black38,
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: "privacy policy",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline
                              ),
                            ),
                          ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.arrow_forward,
                  size: 50,
                  color: Colors.black,
                ),
              ),
            ],
        ),
      ),
    );
  }
}
