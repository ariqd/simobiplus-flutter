import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:simobiplus/bottombar.dart';
import 'package:simobiplus/components/sinarmas_button_secondary_rounded.dart';
import 'package:simobiplus/packages/simas_icons.dart';

class Easypin extends StatefulWidget {
  const Easypin({
    super.key,
  });

  @override
  State<Easypin> createState() => _EasypinState();
}

class _EasypinState extends State<Easypin> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _EasypinFormKey = GlobalKey<FormState>();
  bool _keyboardVisible = false;
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    TextStyle linkStyle = TextStyle(color: Theme.of(context).primaryColor);
    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              print('Username Login');
            },
            child: const Text(
              'Username Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Container(
              width: double.infinity,
              // transform: Matrix4.translationValues(0.0, -70.0, 0.0),
              // clipBehavior: Clip.hardEdge,
              // decoration: const BoxDecoration(
              //   borderRadius: BorderRadius.only(
              //     topRight: Radius.circular(25),
              //     topLeft: Radius.circular(25),
              //   ),
              // ),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: _EasypinFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(height: !_keyboardVisible ? 20 : 120),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'EasyPIN Login',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Simas.EasyPIN,
                          color: Colors.white,
                          size: 50,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Enter your 6 digit secure code',
                      style: TextStyle(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        maxLength: 6,
                        textAlign: TextAlign.center,
                        cursorColor: Colors.white,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                        decoration: const InputDecoration(
                          counterText: "",
                          focusColor: Colors.white,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Your account will be blocked after 3 incorrect attempts',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.grey,
                          // fontSize: 20.0,
                        ),
                        children: <TextSpan>[
                          const TextSpan(
                              text: 'Don\'t have an account? ',
                              style: TextStyle(color: Colors.white)),
                          TextSpan(
                            text: 'Register here',
                            style: const TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Register here');
                              },
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    SinarmasButtonSecondaryRounded(
                      'Continue',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottomBar(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
