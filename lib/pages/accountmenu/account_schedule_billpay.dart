import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:simobiplus/pages/easypin/easypin_continue_func.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';
import 'account_schedule_billpay_detail.dart';

List<DropdownMenuItem<String>> get billerDate{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Select Date"),value: "00"), DropdownMenuItem(child: Text("01"),value: "01"),
    DropdownMenuItem(child: Text("02"),value: "02"), DropdownMenuItem(child: Text("03"),value: "03"),
    DropdownMenuItem(child: Text("04"),value: "04"), DropdownMenuItem(child: Text("05"),value: "05"),
    DropdownMenuItem(child: Text("06"),value: "06"), DropdownMenuItem(child: Text("07"),value: "07"),
    DropdownMenuItem(child: Text("08"),value: "08"), DropdownMenuItem(child: Text("09"),value: "09"),
    DropdownMenuItem(child: Text("10"),value: "10"), DropdownMenuItem(child: Text("11"),value: "11"),
    DropdownMenuItem(child: Text("12"),value: "12"), DropdownMenuItem(child: Text("13"),value: "13"),
    DropdownMenuItem(child: Text("14"),value: "14"), DropdownMenuItem(child: Text("15"),value: "15"),
    DropdownMenuItem(child: Text("16"),value: "16"), DropdownMenuItem(child: Text("17"),value: "17"),
    DropdownMenuItem(child: Text("18"),value: "18"), DropdownMenuItem(child: Text("19"),value: "19"),
    DropdownMenuItem(child: Text("20"),value: "20"), DropdownMenuItem(child: Text("21"),value: "21"),
    DropdownMenuItem(child: Text("22"),value: "22"), DropdownMenuItem(child: Text("23"),value: "23"),
    DropdownMenuItem(child: Text("24"),value: "24"), DropdownMenuItem(child: Text("27"),value: "25"),
    DropdownMenuItem(child: Text("26"),value: "26"), DropdownMenuItem(child: Text("27"),value: "27"),
    DropdownMenuItem(child: Text("28"),value: "28"), DropdownMenuItem(child: Text("29"),value: "29"),
    DropdownMenuItem(child: Text("30"),value: "30"), DropdownMenuItem(child: Text("31"),value: "31"),
  ];
  return menuItems;
}

class ScheduledBillpayment extends StatefulWidget {
  const ScheduledBillpayment({
    super.key,
  });

  @override
  State<ScheduledBillpayment> createState() => ScheduledBillpaymentState();
}

class ScheduledBillpaymentState extends State<ScheduledBillpayment> {
  final List<dynamic> scheduleBillpay = [ 
    {
      'bilpayType' : 'PLN PostPaid',
      'amount' : 'Rp. 100.000',
      'sourceAcc' : '05581928132',
      'sourceAccType' : 'Tabungan Simas Co Branding AAAAAAAAAA',
      'toAcc' : '0552132515',
      'nextDate' : '6 May 2023',
    },
    {
      'bilpayType' : 'PLN PostPaid',
      'amount' : 'Sesuai Tagihan',
      'sourceAcc' : '05581928132',
      'sourceAccType' : 'Joel Test',
      'toAcc' : '0552132516',
      'nextDate' : '9 May 2023',
    },
  ];

  String newDate = '00';
  final newDateControll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Schedule Bill Payment List', style: TextStyle(color: Colors.white, fontSize: 18)),
          backgroundColor: Color(0xffFA3F70),
          elevation: 0,
          leading: const BackButton(
            color: Colors.white, // <-- SEE HERE
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width * 1,
          color: Colors.grey[200],
          child: Column(
            children: [
              Column (
                children: [
                  scheduleBillpay.isEmpty ?
                  emptyList(context)
                  :
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width * 1,
                        child: 
                        ListView.separated(
                          itemCount: scheduleBillpay.length,
                          itemBuilder: (BuildContext context, int index) 
                                    {
                                      final items = index;
                                      return 
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                        child: 
                                        Slidable(
                                            startActionPane: ActionPane(
                                                extentRatio: 0.2,
                                                motion: StretchMotion(),
                                                children: [
                                                  SlidableAction(
                                                    onPressed: (context) =>
                                                        showDialog(context: context, 
                                                        builder: (BuildContext context) => EditItem(context, items)),
                                                    icon: Icons.edit_square,
                                                    label: 'Edit',
                                                    backgroundColor: Colors.orange,
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(10),
                                                      bottomLeft: Radius.circular(10),
                                                    ),
                                                  )
                                                ]),

                                            endActionPane: ActionPane(
                                                extentRatio: 0.2,
                                                motion: StretchMotion(),
                                                children: [
                                                  SlidableAction(
                                                    onPressed: (context) =>
                                                        showDialog(context: context, 
                                                        builder: (BuildContext context) => DeleteItem(context, items)),
                                                    icon: Icons.delete,
                                                    label: 'Delete',
                                                    backgroundColor: Colors.pink,
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(10),
                                                      bottomRight: Radius.circular(10),
                                                    ),
                                                  )
                                                ]),
                                            child: 
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                                color: Colors.white
                                                ),
                                              child: billerItemList(items)
                                            ),
                                        )
                                      ); 
                                    },
                          separatorBuilder: (context, index) => const Divider(),
                )
                      ),

                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: 
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: SinarmasButtonRounded(
                            'CREATE SCHEDULED BILL PAYMENT', 
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
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }

  Widget emptyList(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('You don\'t have scheduled bill payment list', style: TextStyle(color: Colors.grey[600]),),
          ),
          Expanded(child: 
            Align(alignment: Alignment.bottomCenter,
            child: 
              Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                child: SinarmasButtonRounded(
                  'CREATE SCHEDULED BILL PAYMENT', 
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
            )
          )
        ],
      ),
    );
  }

  Widget billerItemList(items) => ListTile(
    title:
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(          
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(scheduleBillpay[items]['bilpayType'], style: TextStyle(color: Color.fromARGB(225, 47, 71, 109), fontWeight: FontWeight.bold),),
                    Text(scheduleBillpay[items]['toAcc'], style: TextStyle(color: Colors.grey[600])),
                    Text('Next payment: ' + scheduleBillpay[items]['nextDate'], style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 40,
                )
              ],
            ),
              ),
        ),
    onTap: () {
      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => ScheduledBillpaymentDetail(billpayItem: scheduleBillpay[items],)));
    },
    tileColor: Colors.black,
  );

  Widget DeleteItem(BuildContext context, int index) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      contentPadding: EdgeInsets.only(top: 20, right: 20, left: 20),
      content: 
      Container(
        height: MediaQuery.of(context).size.height * 0.25,
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Are you sure want to delete', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(scheduleBillpay[index]['bilpayType'] + ' - ' +  scheduleBillpay[index]['toAcc'] + ' ?', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('You can\'t undo this action', 
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
                                scheduleBillpay.removeAt(index);
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
                    child: Text('YES', style: TextStyle(color: Color(0xffFA3F70), fontSize: 18)),
                  ),
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }

  Widget EditItem(BuildContext context, int index) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      contentPadding: EdgeInsets.only(top: 20, right: 10, left: 10),
      content: 
      Container(
        height: MediaQuery.of(context).size.height * 0.35,
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Edit scheduled bill payment', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold,), textAlign: TextAlign.start,),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: 
              SizedBox(
                width: 300,
                child: DropdownButtonFormField(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.grey)),
                    labelText: 'Scheduled bill payment date'
                  ),
                  items: billerDate,
                  hint: Text('Schedule billpayment date', style: TextStyle(color: Colors.grey,fontSize: 18)),
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                  icon: Icon(Icons.expand_more, size: 20,),
                  value: newDate,
                  onChanged: 
                    (String? newValue){
                      setState(() {
                        newDate = newValue!;
                      });
                    },
                  ),
              )
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SinarmasButtonRounded(
                    'Save', 
                    // disabled: newDate == '00',
                    onPressed: () {
                      if(newDate == '00'){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Please Select A New Date"),
                        ));
                      } else{
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
                      }
                  }),
                  
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'CANCEL'),
                    child: Text('CANCEL', style: TextStyle(color: Color(0xffFA3F70), fontSize: 18)),
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
