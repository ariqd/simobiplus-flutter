import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:simobiplus/components/sinarmas_button_secondary.dart';
import 'package:simobiplus/components/sinarmas_button.dart';

import 'package:simobiplus/pages/login/login.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle linkStyle = const TextStyle(decoration: TextDecoration.underline);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Image.asset(
              'assets/images/introduction-image.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0.0, -30.0, 0.0),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              color: Colors.white,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/simobiplus.png',
                      width: 80,
                    ),
                    const SizedBox(width: 20.0),
                    Image.asset(
                      'assets/images/sinarmas.png',
                      width: 80,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Simple and Secure way to manage your money',
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                SinarmasButton(
                  'LOGIN',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                ),
                SinarmasButtonSecondary(
                  'REGISTER',
                  onPressed: () {
                    print("Go to REGISTER");
                  },
                ),
                const SizedBox(height: 10),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.grey,
                      // fontSize: 20.0,
                    ),
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'By log in or create new account,\nI agree to ',
                      ),
                      TextSpan(
                          text: 'Terms and Conditions',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Service');
                            }),
                      const TextSpan(
                        text: ' and ',
                      ),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Privacy Policy');
                            }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
