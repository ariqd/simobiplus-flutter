import 'package:flutter/material.dart';
import 'package:simobiplus/styling/greyLineFull.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';
import 'package:flutter_switch/flutter_switch.dart';

class AccountIbankPref extends StatefulWidget {
  const AccountIbankPref({
    super.key,
  });

  @override
  State<AccountIbankPref> createState() => AccountIbankPrefState();
}

class AccountIbankPrefState extends State<AccountIbankPref> {
  bool inetEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Internet Banking', style: TextStyle(color: Colors.black, fontSize: 18)),
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
                  child: Text('Manage access to your Internet Banking account', style: TextStyle(fontSize: 20)))
                ), 

              greyLineFull(minus: 40),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/ibank.png', width: 80,),
                    Text('Internet Banking', style: TextStyle(fontSize: 18)),
                    FlutterSwitch(
                      value: inetEnabled, 
                      showOnOff: true,
                      width: 80,
                      height: 40,
                      onToggle: (val) {
                        setState(() {
                          inetEnabled = val;
                        });
                      },
                      activeColor: Color(0xffFA3F70),
                      activeToggleColor: Colors.white,
                      )
                  ]),
                ), 
              greyLineFull(minus: 40),

              Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 30, right: 30, top: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                    color: Colors.grey
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                child:
                Column(
                  children: [
                    Row(
                      children: [
                      Expanded(
                        flex: 2,
                        child: 
                        Icon(Icons.error, color: Color.fromARGB(255, 47, 71, 109), size: 40,),
                      ),
                      Expanded(
                        flex: 8,
                        child: 
                        Padding(
                          padding: const EdgeInsets.only(right: 10,),
                          child: Text(
                            'Your SimobiPlus username and password can be used to access Sinarmas Internet Banking at www.banksinarmas.com', 
                            style: TextStyle(color: Color.fromARGB(255, 47, 71, 109), fontSize: 13),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],),

                    Row(
                      children: [
                      Expanded(
                        flex: 2,
                        child: 
                        Container(),
                      ),
                      Expanded(
                        flex: 8,
                        child: 
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 20),
                          child: Text(
                            'You can easily enable or disable the access from this menu', 
                            style: TextStyle(color: Color.fromARGB(255, 47, 71, 109), fontSize: 13),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],),
                  ],
                )
              ),
            ),
            ],
          ),
        )
        );
  }
}
