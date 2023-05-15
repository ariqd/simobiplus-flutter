import 'package:flutter/material.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';

class RegisterAtm extends StatefulWidget {
  const RegisterAtm({
    super.key,
  });

  @override
  State<RegisterAtm> createState() => _RegisterAtmState();
}

class _RegisterAtmState extends State<RegisterAtm> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

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
            child: Column(
              children: [
                const Text(
                  'As a start, help us to identify you',
                  style: TextStyle(
                    fontSize: 24.0
                  )
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter ATM Card Number',
                    floatingLabelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    suffixIcon: const Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    )
                  )
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/captcha.png',
                        width: 150.0,
                        height: 80.0,
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Captcha'
                              )
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'Can\'t see? Refresh Captcha'
                            )
                          ]
                        )   
                      )
                    ]
                  ),
                  margin: EdgeInsets.only(top: 16.0),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Captcha protection to stop spam and robot',
                  style: TextStyle(fontSize: 12.0),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                const Text(
                  'I DON\'T HAVE A SINARMAS CARD'
                ),
              ]
            ),
          ),
        ])
      )
    );
  }
}
