// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:simobiplus/fundtransfer/fundtransferPayment.dart';
import 'package:simobiplus/fundtransfer/paymentHistoryTrf.dart';

class AddPayeeAccount extends StatefulWidget {
  const AddPayeeAccount({super.key});

  @override
  State<AddPayeeAccount> createState() => _AddPayeeAccountState();
}

class _AddPayeeAccountState extends State<AddPayeeAccount> {
  final List<dynamic> _itemList = [
    {
      'text': 'Fendi Setiyanto 1',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto 2',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto 3',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
    {
      'text': 'Fendi Setiyanto',
      'subText': '0047789567',
      'secondaryText': 'PT. Bank Sinarmas, Tbk.'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //You should use `Scaffold` if you have `TextField` in body.
      //Otherwise on focus your `TextField` won`t scroll when keyboard popup.
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Header Container
            Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: BackButton(
                  color: Colors.pink,
                )),

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
                      child: Text(
                        "Send money to",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                        child: DefaultTabController(
                            length: 3,
                            child: Container(
                              child: TabBar(
                                tabs: [
                                  Tab(
                                    child: Text(
                                      "Account Number",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Phone Number",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      "Email Address",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                                isScrollable: true,
                                indicatorColor: Colors.pink,
                                labelPadding:
                                    EdgeInsets.only(left: 30, right: 30),
                              ),
                            ))),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 4,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Account number',
                                  floatingLabelStyle: TextStyle(
                                    color: Theme.of(context).primaryColor,
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
                          SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.pink),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const FundTransferPayment(),
                                      ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Divider(
                              color: Colors.black,
                              height: 25,
                              thickness: 0.6,
                              indent: 5,
                              endIndent: 5,
                            )),
                        Expanded(
                            flex: 1,
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("OR"))),
                        Expanded(
                            flex: 2,
                            child: Divider(
                              color: Colors.black,
                              height: 25,
                              thickness: 0.6,
                              indent: 5,
                              endIndent: 5,
                            ))
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Find from previous transaction",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          )),
                    ),
                    Container(
                      child: PaymentHistoryTrf(
                          isBiFast: false, itemList: _itemList),
                    ),
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
