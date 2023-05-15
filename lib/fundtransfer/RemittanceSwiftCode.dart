import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simobiplus/fundtransfer/RemittanceBankInformation.dart';
import 'package:simobiplus/fundtransfer/addPayeeAccount.dart';
import 'package:simobiplus/fundtransfer/listTransferType.dart';
import 'package:simobiplus/pages/login/login.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';
import 'package:simobiplus/fundtransfer/paymentHistoryTrf.dart';

class SwiftCode extends StatefulWidget {
  const SwiftCode({
    super.key,
  });

  @override
  State<SwiftCode> createState() => _SwiftCodeState();
}

class _SwiftCodeState extends State<SwiftCode> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _keyboardVisible = false;
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
    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: HexColor("#F1F3F6"),
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                  height: MediaQuery.of(context).size.height / 5.5,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xffFA3F70),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      // width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.width * 0.20,
                    ),
                    Column(
                      children: [
                        paddingvertical(size: 10),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Column(
                              children: [
                                SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Input SWIFT Code',
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
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                          flex: 0,
                                          child: Icon(
                                            Icons.error,
                                            size: 30,
                                            color: HexColor('#2F476D'),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Text(
                                              "A Swift code is a unique code required in transfering money between banks, in particular for international wire transfers",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontSize: 14,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: SinarmasButtonRounded(
                            'NEXT',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const RemittanceBankInfo(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  "Previous Transaction",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              )),
                        ),
                        Container(
                          child: PaymentHistoryTrf(
                            isBiFast: false,
                            itemList: _itemList,
                            backgroundColor: Color(0xffF9F8FD),
                            valueRadius: 50,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
