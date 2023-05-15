import 'package:flutter/material.dart';
import 'package:simobiplus/styling/greyLineFull.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';
import 'package:flutter_switch/flutter_switch.dart';

class AccountLoginPref extends StatefulWidget {
  const AccountLoginPref({
    super.key,
  });

  @override
  State<AccountLoginPref> createState() => AccountLoginPrefState();
}

class AccountLoginPrefState extends State<AccountLoginPref> {
  bool fingerEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Login Preference', style: TextStyle(color: Colors.black, fontSize: 18)),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const BackButton(
            color: Color(0xffFA3F70), // <-- SEE HERE
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width * 1,
          color: Colors.white,
          child: Column (
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Align (
                  alignment: Alignment.centerLeft,
                  child: Text('Choose your login preference', style: TextStyle(color: Colors.grey[600], fontSize: 15)))
                ), 

              greyLineFull(minus: 40),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                        Icons.fingerprint,
                        color: Color(0xffFA3F70),
                        size: 50,
                      ), 
                    Text('Login with Fingerprint', style: TextStyle(color: Colors.grey[600], fontSize: 15)),
                    FlutterSwitch(
                      value: fingerEnabled, 
                      showOnOff: true,
                      width: 70,
                      height: 40,
                      onToggle: (val) {
                        setState(() {
                          fingerEnabled = val;
                        });
                      },
                      activeColor: Color(0xffFA3F70),
                      activeToggleColor: Colors.white,
                      )
                  ]),
                ), 
              greyLineFull(minus: 40),
            ],
          ),
        )
        );
  }
}
