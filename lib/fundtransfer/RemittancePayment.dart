import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simobiplus/components/sinarmas_radioButton.dart';
import 'package:simobiplus/fundtransfer/RemittanceConfirmation.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';
import '../packages/simas_icons.dart';

class RemittancePayment extends StatefulWidget {
  const RemittancePayment({
    super.key,
  });

  @override
  State<RemittancePayment> createState() => _RemittancePaymentState();
}

class _RemittancePaymentState extends State<RemittancePayment> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _keyboardVisible = false;
  final _RemittancePaymentFormKey = GlobalKey<FormState>();
  bool _isRadioSelected = false;
  int _value = 1;
  final List<dynamic> _accountList = [
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
        appBar: AppBar(
          title: Text('Remittance'),
          backgroundColor: Color(0xffFA3F70),
          centerTitle: true,
          leading: const BackButton(
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xffFA3F70),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                          child: Image.asset(
                                        'assets/images/Trf_domestik.png',
                                        width: 50,
                                      )),
                                      SizedBox(width: 10),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "FENDI SETIYANTO",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          SizedBox(height: 2),
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "0086577654" + " - ",
                                                  style: TextStyle(
                                                      color:
                                                          HexColor('#2F476D'),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 16),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  "PT. Bank Sinarmas Tbk",
                                                  style: TextStyle(
                                                      color:
                                                          HexColor('#2F476D'),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 16),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Form(
                                  key: _RemittancePaymentFormKey,
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "Currency",
                                                    style: TextStyle(
                                                        color:
                                                            HexColor('#2F476D'),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                  ),
                                                ),
                                                TextFormField(
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  decoration: InputDecoration(
                                                    hintText: "IDR",
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 20),
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide:
                                                            const BorderSide(
                                                          width: 0,
                                                          style:
                                                              BorderStyle.none,
                                                        )),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 20.0),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10),
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Amount",
                                                    style: TextStyle(
                                                        color:
                                                            HexColor('#2F476D'),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                  ),
                                                ),
                                                TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  decoration: InputDecoration(
                                                    hintText: "0",
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 20),
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide:
                                                            const BorderSide(
                                                          width: 0,
                                                          style:
                                                              BorderStyle.none,
                                                        )),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Exchange Rate",
                                        style: TextStyle(
                                            color: HexColor('#2F476D'),
                                            fontSize: 16),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text("1 USD = 120,000.00 IDR",
                                          style: TextStyle(
                                              color: HexColor('#2F476D'),
                                              fontSize: 16),
                                          textAlign: TextAlign.right),
                                    )
                                  ],
                                )),
                                SizedBox(height: 10),
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Equivalent to",
                                        style: TextStyle(
                                            color: HexColor('#2F476D'),
                                            fontSize: 16),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "IDR 120,000.00",
                                        style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                )),
                                SizedBox(height: 10),
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Fee (OUR)",
                                        style: TextStyle(
                                            color: HexColor('#2F476D'),
                                            fontSize: 16),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text("USD 25.00(IDR 380,625.00)",
                                          style: TextStyle(
                                              color: HexColor('#2F476D'),
                                              fontSize: 16),
                                          textAlign: TextAlign.right),
                                    )
                                  ],
                                )),
                                Divider(
                                  color: Colors.grey,
                                  height: 25,
                                  thickness: 1,
                                  indent: 1,
                                  endIndent: 1,
                                ),
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Amount to be Debited",
                                        style: TextStyle(
                                            color: HexColor('#2F476D'),
                                            fontSize: 16),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text("IDR 1,903,125.00",
                                          style: TextStyle(
                                              color: HexColor('#2F476D'),
                                              fontSize: 16),
                                          textAlign: TextAlign.right),
                                    )
                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Icon(
                                      Simas.caution_circle,
                                      size: 30,
                                      color: HexColor('#2F476D'),
                                    )),
                                Expanded(
                                    flex: 5,
                                    child: Text(
                                      "Transaction fee will be charged to the sender (OUR). Additional fees may be charged by the Intermediary Bank so that there may be differences in the amount received",
                                      style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 35),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Source Account",
                            style: TextStyle(
                                color: HexColor(
                                  '#2F476D',
                                ),
                                fontWeight: FontWeight.normal,
                                fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      for (int i = 0;
                                          i < _accountList.length;
                                          i++)
                                        MyRadioListTile<int>(
                                          value: i,
                                          groupValue: _value,
                                          title: Text('Hello'),
                                          onChanged: (value) =>
                                              setState(() => _value = value!),
                                        ),
                                    ],
                                  ),
                                ),
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
                                      const RemittanceConfirmation(),
                                ),
                              );
                            },
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
