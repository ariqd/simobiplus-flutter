import 'package:flutter/material.dart';

import 'package:simobiplus/registerdao/registeratm.dart';
import 'package:simobiplus/registerdao/registeremoney.dart';

class Register extends StatefulWidget {
  const Register({
    super.key,
  });

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _loginFormKey = GlobalKey<FormState>();
  bool _keyboardVisible = false;
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    TextStyle linkStyle = TextStyle(color: Theme.of(context).primaryColor);
    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container (
            padding: const EdgeInsets.only(left: 16, top: 15, right: 16, bottom: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Welcome to SimobiPlus',
              style: TextStyle(
                fontSize: 24.0
              )
            )
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 15),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Please make sure whter you already have a Sinarmas Bank Account or not, then continue the SimobiPlus registration process by selecting the options below',
            )
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 10),
            height: 100,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterAtm()),
                  );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink.shade400,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.all(15),
                  title: Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Text('I have Sinarmas Bank Account', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  subtitle: Text('Click here if you are new to SimobiPlus but\nyou have owned Sinarmas Bank Account', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300)),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 10),
            height: 100,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterEmoney()),
                  );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink.shade400),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.all(18),
                  title: Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Text('I don\'t have Sinarmas Bank Account', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  subtitle: Text('Click here if you are new to SimobiPlus but\nyou have owned Sinarmas Bank Account', style: TextStyle(fontWeight: FontWeight.w300)),
                ),
              ),
            ),
          )
        ])
      )
    );
  }
}
