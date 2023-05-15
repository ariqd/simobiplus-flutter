import 'package:flutter/material.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';
import 'package:simobiplus/pages/easypin/easypin_continue_func.dart';
import 'package:simobiplus/styling/greyLineFull.dart';

class ScheduledTransferEdit extends StatefulWidget {
  const ScheduledTransferEdit({
    super.key,
    required this.scheduleItem,
  });
  final Map scheduleItem;

  @override
  State<ScheduledTransferEdit> createState() => ScheduledTransferEditState();
}

class ScheduledTransferEditState extends State<ScheduledTransferEdit> {

  final textControl = TextEditingController();

  Map trfItem = {};

  void dispose() {
    textControl.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    trfItem = widget.scheduleItem;
    textControl.text = trfItem['amount'];
    print(trfItem);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Edit Schedule transfer', style: TextStyle(color: Colors.black, fontSize: 18)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20, bottom: 5, left: 20),
                child: 
                TextFormField(
                  controller: textControl,
                  decoration: InputDecoration(
                    labelText: 'Transfer Amount',
                  ),
                )
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
                child: 
                Text('Availble Balance : Rp 22.000.000', style: TextStyle(color: Colors.grey[600], fontSize: 16),)
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: greyLineFull(thickness: 4, minus: 40,),
              ),
        
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 20, left: 20),
                child: Text('Transfer', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: Container(
                  height: 120,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              color: Colors.green
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 12, color: Colors.green),
                                left: BorderSide(width: 5, color: Colors.transparent),
                                right: BorderSide(width: 5, color: Colors.transparent)
                              ),
                            ),
                          ),
                        ],
                      ),
                                
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(trfItem['sourceAccName'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                                Text(trfItem['sourceAcc'] + ' - PT BANK SINARMAS', style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(trfItem['toAccName'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                                Text(trfItem['toAcc'] + ' - ' + trfItem['toAccBank'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 90.0, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Transfer schedule', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                                Text(trfItem['transferSchedule'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                              ],
                            ),
                          ),
                  
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Next Transfer', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                              Text(trfItem['nextDate'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
              
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Note', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                                Text(trfItem['note'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                              ],
                            ),
                          ),
                          
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Total', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                              Text(trfItem['totalDone'] + ' 0f ' + trfItem['total'] + 'times', 
                              style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: greyLineFull(thickness: 20,),
              ),
        
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Once completed, transaction cannot be canceled', 
                          style: TextStyle(color: Colors.grey[600], fontSize: 12))
                )
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                child: SinarmasButtonRounded(
                  'Next', 
                  disabled: textControl.text == trfItem['amount'],
                  onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EasypinFunc(
                            continueTo: () {
                              int count = 0;
                              Navigator.popUntil(context, (route) {
                                  return count++ == 3;
                              });
                            },
                          ),
                        ),
                      );
                }),
              )
            ],
          ),
          ),
        );
  }
}
