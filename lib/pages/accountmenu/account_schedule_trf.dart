import 'package:flutter/material.dart';
import 'package:simobiplus/pages/easypin/easypin_continue_func.dart';
import 'account_schedule_trf_edit.dart';

class ScheduledTransfer extends StatefulWidget {
  const ScheduledTransfer({
    super.key,
  });

  @override
  State<ScheduledTransfer> createState() => ScheduledTransferState();
}

class ScheduledTransferState extends State<ScheduledTransfer> {
  final List<dynamic> scheduleTrf = [ 
    {
      'transRefNum' : 'MB-081987283991',
      'amount' : '100.000',
      'sourceAcc' : '05581928132',
      'sourceAccName' : 'Joel Test',
      'toAcc' : '0552132515',
      'toAccName' : 'Sum Test',
      'toAccBank' : 'Bank Sinarmas',
      'transferSchedule' : 'One time',
      'nextDate' : '6-May-23',
      'note' : 'test',
      'total' : '1',
      'totalDone' : '0'
    },
    {
      'transRefNum' : 'MB-081987200991',
      'amount' : '500.000',
      'sourceAcc' : '05581928165',
      'sourceAccName' : 'Ran Test',
      'toAcc' : '055213254545',
      'toAccName' : 'Ban Test',
      'toAccBank' : 'Mandiri',
      'transferSchedule' : 'Every Week',
      'nextDate' : '7-May-23',
      'note' : 'another',
      'total' : '5',
      'totalDone' : '3'
    },
    {
      'transRefNum' : 'MB-08198645691',
      'amount' : '500.000.000',
      'sourceAcc' : '05581928165',
      'sourceAccName' : 'Ran Test',
      'toAcc' : '0559974545',
      'toAccName' : 'Nox Test',
      'toAccBank' : 'BCA',
      'transferSchedule' : 'Every Day',
      'nextDate' : '27-May-23',
      'note' : '',
      'total' : '5',
      'totalDone' : '0'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Schedule transfer list', style: TextStyle(color: Colors.black, fontSize: 18)),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const BackButton(
            color: Color(0xffFA3F70), // <-- SEE HERE
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width * 1,
          color: Colors.grey[200],
          child: Column (
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(top: 90),
              //   child: Image.asset(
              //     'assets/images/no-scheduled.png',
              //     height: 300,
              //     width: 300,
              //   ),
              // ),

              // Text('You don\'t have scheduled transfer list', style: TextStyle(color: Colors.grey[600]),),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: 
                ListView.separated(
                  itemBuilder: (BuildContext context, int index) { 
                    final items = index;
                    return scheduleItemList(items); 
                    }, 
                  separatorBuilder: (BuildContext context, int index) =>
                                const Divider(), 
                  itemCount: scheduleTrf.length
                  ),
              ),

            ],
          ),
        )
    );
  }

  Widget scheduleItemList(items) => ListTile(
    title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            alignment: Alignment.topLeft,
            color: Colors.white,
            // child: Center(child: Text('Entry ${_items[index]}')),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(text: TextSpan(
                      text: 'Scheduled transfer ',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                      children: [
                        TextSpan(
                          text: '/ ',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        TextSpan(
                          text: scheduleTrf[items]['transRefNum'],
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      ]
                    )),

                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) =>  ScheduledTransferEdit(scheduleItem: scheduleTrf[items])));
                          },
                          child: Icon(Icons.edit_square, size: 30, color: Colors.black,),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => DeleteItem(context, items),
                            );
                          },
                          child: Icon(Icons.delete, size: 30, color: Colors.black,),
                        )
                      ],
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text('Transfer amount', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                ),
                Text('Rp ' + scheduleTrf[items]['amount'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Text('Transfer fee not included Rp 0 (Transfer Fund)', style: TextStyle(color: Colors.grey, fontSize: 12),),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
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
                                  Text(scheduleTrf[items]['sourceAccName'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                                  Text(scheduleTrf[items]['sourceAcc'] + ' - PT BANK SINARMAS', style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(scheduleTrf[items]['toAccName'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                                  Text(scheduleTrf[items]['toAcc'] + ' - ' + scheduleTrf[items]['toAccBank'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
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
                  padding: const EdgeInsets.only(right: 90.0),
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
                                  Text(scheduleTrf[items]['transferSchedule'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                                ],
                              ),
                            ),
                    
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Next Transfer', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                                Text(scheduleTrf[items]['nextDate'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                
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
                                  Text('Note', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                                  Text(scheduleTrf[items]['note'], style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                                ],
                              ),
                            ),
                            
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Total', style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                                Text(scheduleTrf[items]['totalDone'] + ' 0f ' + scheduleTrf[items]['total'] + 'times', 
                                style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )

              ],),
            )
          ),
        ),
        onTap: () {},
  );

  Widget DeleteItem(BuildContext context, int index) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      contentPadding: EdgeInsets.only(top: 20, right: 20, left: 20),
      content: 
      Container(
        height: MediaQuery.of(context).size.height * 0.2,
        child: 
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Delete Transfer', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Are you sure you want to delete this ongiong transfer?', 
              style: TextStyle(color: Colors.grey, fontSize: 14), textAlign: TextAlign.center,),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'CANCEL'),
                    child: Text('CANCEL', style: TextStyle(color: Color(0xffFA3F70), fontSize: 18)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EasypinFunc(
                            continueTo: () {
                              setState(() {
                                scheduleTrf.removeAt(index);
                              });
                              int count = 0;
                              Navigator.popUntil(context, (route) {
                                  return count++ == 2;
                              });
                            },
                          ),
                        ),
                      );
                    },
                    child: Text('DELETE', style: TextStyle(color: Color(0xffFA3F70), fontSize: 18)),
                  ),
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }

}
