import 'package:flutter/material.dart';
import 'package:simobiplus/styling/greyLineFull.dart';

class ScheduledBillpaymentDetail extends StatefulWidget {
  const ScheduledBillpaymentDetail({
    super.key,
    required this.billpayItem,
  });

  final Map billpayItem; 

  @override
  State<ScheduledBillpaymentDetail> createState() => ScheduledBillpaymentDetailState();
}

class ScheduledBillpaymentDetailState extends State<ScheduledBillpaymentDetail> {

  Map billItem = {};

  @override
  void initState() {
    super.initState();
    billItem = widget.billpayItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        Container(
          color: Colors.grey[200],
          child: 
          Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              color: Color(0xffFA3F70),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 16),
              child: Row(children: [
                const BackButton(
                  color: Colors.white,
                ),
                Text('Scheduled Bill Payment List', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)
              ]),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(20, 56, 146, 252),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Text('Regular', style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),)
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 10),
                            child: Text(billItem['bilpayType'], style: TextStyle(color: Colors.grey[600], fontSize: 18),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(billItem['toAcc'], style: TextStyle(color: Color.fromARGB(225, 47, 71, 109), fontSize: 20, fontWeight: FontWeight.bold),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Text('Next Payment: ' + billItem['nextDate'], 
                            style: TextStyle(color: Colors.grey, fontSize: 14),),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Amount', style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                              Text(billItem['amount'], 
                              style: TextStyle(color: Color.fromARGB(225, 47, 71, 109), fontSize: 14, fontWeight: FontWeight.bold),),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: greyLineFull(thickness: 2,),
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(billItem['sourceAcc'], 
                              style: TextStyle(color: Color.fromARGB(225, 47, 71, 109), fontSize: 14, fontWeight: FontWeight.bold),),
                            ],
                          ),

                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Source account', style: TextStyle(color: Colors.grey[600], fontSize: 14),),
                                Flexible(child: 
                                  Text(billItem['sourceAccType'], 
                                  style: TextStyle(color: Color.fromARGB(225, 47, 71, 109), fontSize: 14, fontWeight: FontWeight.bold), textAlign: TextAlign.end,),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                
                Expanded(child: 
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Last transaction', 
                              style: TextStyle(color: Color.fromARGB(225, 47, 71, 109), fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text('No Transactions to show', style: TextStyle(color: Colors.grey, fontSize: 14,)),
                      ),
                    ]),
                  )
                )
              ],
            )
          ]),
        )
    );
  }

}
