import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';

class AccountChangeEasyPin extends StatefulWidget {
  const AccountChangeEasyPin({
    super.key,
  });

  @override
  State<AccountChangeEasyPin> createState() => AccountChangeEasyPinState();
}

class AccountChangeEasyPinState extends State<AccountChangeEasyPin> {
  final textControl = TextEditingController();
  final textControl2 = TextEditingController();
  final textControl3 = TextEditingController();

  void dispose() {
    textControl.dispose();
    textControl2.dispose();
    textControl3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool disabledButton = textControl.text.length < 6 || textControl2.text.length < 6 || textControl3.text != textControl2.text;
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Update EasyPIN', style: TextStyle(color: Colors.black, fontSize: 18)),
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
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter old EasyPIN',
                  ),
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(6)],
                )
              ),

              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 5),
                child: 
                TextFormField(
                  controller: textControl2,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter new EasyPIN',
                  ),
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(6)],
                )
              ),

              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 20, bottom: 5),
                child: 
                TextFormField(
                  controller: textControl3,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Confirm new EasyPIN',
                  ),
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(6)],
                )
              ),

              Visibility(
                visible: disabledButton,
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
                        child: 
                        textControl.text == '' ?
                        Text('Old EasyPIN required', style: TextStyle(color: Color(0xffFA3F70)),)
                        :
                        textControl.text.length < 6 ?
                        Text('EasyPIN must be 6 digit', style: TextStyle(color: Color(0xffFA3F70)),)
                        :
                        textControl2.text == textControl.text ?
                        Text('New EasyPIN can\'t be the same as old', style: TextStyle(color: Color(0xffFA3F70)),)
                        :
                        textControl2.text.length < 6 ?
                        Text('New EasyPIN must be 6 digit', style: TextStyle(color: Color(0xffFA3F70)),)
                        :
                        textControl3.text != textControl2.text ?
                        Text('EasyPIN does\'t match', style: TextStyle(color: Color(0xffFA3F70)),)
                        : null
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
                  disabled: disabledButton,
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
