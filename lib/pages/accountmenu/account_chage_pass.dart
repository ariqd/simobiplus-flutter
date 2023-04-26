import 'package:flutter/material.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';

class AccountChangePass extends StatefulWidget {
  const AccountChangePass({
    super.key,
  });

  @override
  State<AccountChangePass> createState() => AccountChangePassState();
}

class AccountChangePassState extends State<AccountChangePass> {
  bool obsecure = true;

  final textControl = TextEditingController();

  void dispose() {
    textControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Change Password', style: TextStyle(color: Colors.black, fontSize: 18)),
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
                padding: const EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 5),
                child: 
                TextFormField(
                  controller: textControl,
                  obscureText: obsecure,
                  decoration: InputDecoration(
                    labelText: 'Enter current password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obsecure = !obsecure;
                        });
                      }, 
                      icon: Icon(
                      obsecure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.black,
                    ))
                  ),
                )
              ),

              Visibility(
                visible: textControl.text == '',
                child:
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 5),
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.error,
                        color: Color(0xffFA3F70),
                        size: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Password is required', style: TextStyle(color: Color(0xffFA3F70)),),
                      )
                    ],
                  )
                ),
              ),

              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                child: SinarmasButtonRounded(
                  'Next', 
                  disabled: textControl.text == '',
                  onPressed: () {
                  print('Pressed');
                }),
              )
            ],
          ),
        )
        );
  }
}
