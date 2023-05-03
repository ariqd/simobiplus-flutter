import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';
import 'package:simobiplus/fundtransfer/fundtransferConfirmation.dart';
import 'package:simobiplus/fundtransfer/sourceAccount.dart';
import 'package:simobiplus/packages/simas_icons.dart';
import 'package:simobiplus/pages/login/login.dart';

class FundTransferPayment extends StatefulWidget {
  const FundTransferPayment({super.key});

  @override
  State<FundTransferPayment> createState() => _FundTransferPaymentState();
}

class _FundTransferPaymentState extends State<FundTransferPayment> {
  bool isChecked = false;
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final List<dynamic> _itemList = [
    {
      'accountName': 'Fendi Setiyanto',
      'accountNumber': '38085713881671',
      'productName': 'Emoney Account',
      'balance': '2000000'
    },
    {
      'accountName': 'Fendi Setiyanto',
      'accountNumber': '38085713881671',
      'productName': 'Tabungan Simas Payroll',
      'balance': '1800000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //You should use `Scaffold` if you have `TextField` in body.
      //Otherwise on focus your `TextField` won`t scroll when keyboard popup.
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Transfer'),
        backgroundColor: Color(0xffFA3F70),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.white, // <-- SEE HERE
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Header Container

            // Container(
            //     padding: const EdgeInsets.all(8.0),
            //     color: Colors.white,
            //     alignment: Alignment.centerLeft,
            //     child: BackButton(
            //       color: Colors.pink,
            //     )),

            //Body Container
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.green),
                            child: Text(
                              "Rp",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Set the amount",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  // labelText: '0',
                                  hintText: "0",
                                  hintStyle: new TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 20.0),
                                  floatingLabelStyle: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 20),
                                    child: Text(
                                      "Rp",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                    size: 30,
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
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      child: Row(
                        children: <Widget>[
                          Container(
                              child: Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          )),
                          Expanded(
                              child: Text(
                            "Schedule transfer",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 18),
                          ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Divider(
                        height: 1,
                        color: Colors.grey,
                        thickness: 0.4,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: <Widget>[
                            Container(
                                child: Icon(
                              Simas.wallet,
                              color: Colors.yellow[800],
                              size: 40,
                            )),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text(
                              "Select source account",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SourceAccount(
                                  isBiFast: false,
                                  itemList: [],
                                ),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Select source account",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18),
                                ),
                              ),
                              Container(
                                child: Icon(Icons.more_vert_rounded),
                              )
                            ],
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Divider(
                        height: 1,
                        color: Colors.grey,
                        thickness: 0.4,
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Additional information (optional)",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Description',
                                  floatingLabelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: SinarmasButtonRounded(
                        'NEXT',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const FundTransferConfirmation(),
                            ),
                          );
                        },
                      ),
                    )
                    // Container(
                    //   color: Colors.green,
                    //   height: 300.0,
                    //   alignment: Alignment.center,
                    //   child: Text("Content 1"),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
