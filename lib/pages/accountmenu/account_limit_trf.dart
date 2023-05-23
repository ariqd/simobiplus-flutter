import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simobiplus/pages/easypin/easypin_continue_func.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';

import 'setLimitComponents/sourceAccountSetLimit.dart';
import 'setLimitComponents/destinationAccountSetLimit.dart';

class SetLimitTransfer extends StatefulWidget {
  const SetLimitTransfer({
    super.key,
  });

  @override
  State<SetLimitTransfer> createState() => SetLimitTransferState();
}

class SetLimitTransferState extends State<SetLimitTransfer> {
  
  final TransLimit = TextEditingController();
  final DayLimit = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Set Transfer Limit', style: TextStyle(color: Colors.white, fontSize: 18)),
          backgroundColor: Color(0xffFA3F70),
          elevation: 0,
          centerTitle: true,
          leading: const BackButton(
            color: Colors.white, // <-- SEE HERE
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width * 1,
          color: Colors.white,
          child: 
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Your Last Source Account', style: TextStyle(color: Color.fromARGB(225, 47, 71, 109), fontWeight: FontWeight.bold, fontSize: 18)),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/FromNew.png',
                            height: 50,
                            width: 50,
                          ),
                    
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Nick Bran', style: TextStyle(color: Color.fromARGB(225, 47, 71, 109), fontWeight: FontWeight.bold, fontSize: 14)),
                                Text('0052321312', style: TextStyle(color: Color.fromARGB(225, 47, 71, 109), fontWeight: FontWeight.bold, fontSize: 14)),
                                Text('TabunganKu', style: TextStyle(fontSize: 14)),

                                TextButton(
                                  onPressed: (){
                                    Navigator.push(context, 
                                    MaterialPageRoute(builder: (context) => SourceAccountLimit()));
                                  }, 
                                  child: 
                                  Text('Choose another source account', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14),)
                                )
                            ],),
                          )
                        ],
                      ),
                    ),

                    Text('Transfer to', style: TextStyle(color: Color.fromARGB(225, 47, 71, 109), fontWeight: FontWeight.bold, fontSize: 18)),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white
                        ),
                        child: 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Transfer to', style: TextStyle(color: Colors.grey),),
                          TextButton(
                            onPressed: (){
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => DestinationAccountSetLimit()));
                            }, 
                            child: 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Select Account', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                  Icon(Icons.keyboard_arrow_right, color: Colors.black,)
                                ],
                              )
                            )
                        ],)
                      ),
                    ),

                    Text('Set Limit Transaction', style: TextStyle(color: Color.fromARGB(225, 47, 71, 109), fontWeight: FontWeight.bold, fontSize: 18)),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white
                        ),
                        child: 
                        TextFormField(
                          controller: TransLimit,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Limit/Transaction',
                            border: InputBorder.none,
                            prefix: Text('Rp', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
                          ),
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white
                        ),
                        child: 
                        TextFormField(
                          controller: DayLimit,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Limit/Day',
                            border: InputBorder.none,
                            prefix: Text('Rp', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
                          ),
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: 
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: SinarmasButtonRounded(
                    'CONTINUE', 
                    onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EasypinFunc(
                            continueTo: () {
                              int count = 0;
                              Navigator.popUntil(context, (route) {
                                  return count++ == 2;
                              });
                            },
                          ),
                        ),
                      );
                  }),
                ),
              )
            ],
          )
        )
    );
  }
}
