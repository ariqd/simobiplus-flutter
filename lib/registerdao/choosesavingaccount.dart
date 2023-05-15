import 'package:flutter/material.dart';

class ChooseSavingAccount extends StatefulWidget {
  const ChooseSavingAccount({
    super.key,
  });

  @override
  State<ChooseSavingAccount> createState() => _ChooseSavingAccountState();
}

class _ChooseSavingAccountState extends State<ChooseSavingAccount> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 16, top: 15, right: 16, bottom: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Choose your product',
              style: TextStyle(
                fontSize: 24.0
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pink.shade400),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.red
                ),
              ),
              Expanded(child: GestureDetector(
                onTap: () {
                  // action
                },
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Smart saving',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),),
              ))
            ]),
          )
        ],
      )
    );
  }
}
