import 'package:flutter/material.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';
import 'package:simobiplus/styling/greyLineFull.dart';

class AccountChangeDevice extends StatefulWidget {
  const AccountChangeDevice({
    super.key,
  });

  @override
  State<AccountChangeDevice> createState() => AccountChangeDeviceState();
}

class AccountChangeDeviceState extends State<AccountChangeDevice> {
  bool obsecure = true;
  int timer = DateTime.now().millisecondsSinceEpoch + 1000 * 300;

  final textControl = TextEditingController();

  void dispose() {
    textControl.dispose();
    super.dispose();
  }

  String _getNumberAddZero(int number) {
    if (number < 10) {
      return "0" + number.toString();
    }
    return number.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Change Device', style: TextStyle(color: Colors.black, fontSize: 18)),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const BackButton(
            color: Color(0xffFA3F70), // <-- SEE HERE
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 60),
              child: Container(
                padding: EdgeInsets.all(20),
                height: 90,
                child:
                RichText(
                  textAlign: TextAlign.center,
                  text: 
                  TextSpan(
                    children: [
                        TextSpan(
                        text: 'Scan QR code in a fresh device to move your authentication', 
                        style: TextStyle(color: Colors.grey[600], fontSize: 15),
                      ),
                      WidgetSpan(child: Icon(Icons.error, color: Colors.grey[600],),)
                    ]
                  ),
                )
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 0.8,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    )
                  ]
                ),
                child:
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Time remaining', style: TextStyle(color: Colors.grey[600], fontSize: 15)),
                      ],
                    ),
                  ),
                  greyLineFull(thickness: 5,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Image.asset('assets/images/QR_test.png', width: 250,),
                        Text('Tap QR code to expand', style: TextStyle(color: Colors.grey[600], fontSize: 14))
                      ],
                    ),
                  )
                ],)
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.8,
                    color: Colors.grey
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                child:
                Row(
                  children: [
                  Expanded(
                    flex: 2,
                    child: 
                    Icon(Icons.error, color: Colors.grey[600], size: 50,),
                  ),
                  Expanded(
                    flex: 8,
                    child: 
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'By continuing, you are fully responsible for all matters that may occur due to moving device authenticataion', 
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],)
              ),
            ),

          ],)
        )
        );
  }
}
