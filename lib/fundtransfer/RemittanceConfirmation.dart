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

import '../packages/simas_icons.dart';

class RemittanceConfirmation extends StatefulWidget {
  const RemittanceConfirmation({
    super.key,
  });

  @override
  State<RemittanceConfirmation> createState() => _RemittanceConfirmationState();
}

class _RemittanceConfirmationState extends State<RemittanceConfirmation> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _keyboardVisible = false;
  final _RemittanceConfirmationFormKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: HexColor("#F1F3F6"),
        appBar: AppBar(
          title: Text('Confirmation'),
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
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Amount",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    )),
                                SizedBox(height: 20),
                                Container(
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
                                            padding: EdgeInsets.symmetric(
                                                vertical: 20, horizontal: 10),
                                            child: Text(
                                              "IDR",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeight.normal),
                                              textAlign: TextAlign.center,
                                            ),
                                          )),
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
                                            padding: EdgeInsets.symmetric(
                                                vertical: 20, horizontal: 10),
                                            child: Text(
                                              "100",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeight.normal),
                                              textAlign: TextAlign.left,
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30),
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Exchange Rate",
                                      style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "1 USD = 120,000.00 IDR",
                                      style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 16),
                                    )
                                  ],
                                )),
                                SizedBox(height: 10),
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Equivalent to",
                                      style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "IDR 120,000.00",
                                      style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 16),
                                    )
                                  ],
                                )),
                                SizedBox(height: 10),
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Fee (OUR)",
                                      style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "USD 25.00(IDR 380,625.00)",
                                      style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 16),
                                    )
                                  ],
                                )),
                                Divider(
                                  color: Colors.grey,
                                  height: 25,
                                  thickness: 0.5,
                                  indent: 1,
                                  endIndent: 1,
                                ),
                                Container(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Amount to be Debited",
                                      style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "IDR 1,903,125.00",
                                      style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 16),
                                    )
                                  ],
                                )),
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
                            "Account Information",
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
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 10),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
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
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Fendi Setiyanto",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              "007876726",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              "Tabungan Simas Payroll",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16),
                                            )
                                          ],
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Simas.more_menu,
                                        size: 25,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                            child: Image.asset(
                                          'assets/images/Trf_domestik.png',
                                          width: 50,
                                        )),
                                        SizedBox(width: 20),
                                        Expanded(
                                            child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "4465777899",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              "Jhon Doe",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                            SizedBox(height: 2),
                                            Text(
                                              "PT. BANK CENTRAL ASIA, TBK.",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16),
                                            )
                                          ],
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
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
                            "Sender Information",
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
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Name",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "FENDI SETIYANTO",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Country",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text("Indonesia",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "City",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text("Wil. Kota jakarta Barat",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Address",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                              "Jl. Kyi Tapa 1 Jakarta Barat",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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
                            "Recipient Information",
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
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Name",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "FENDI SETIYANTO",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Country",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text("Indonesia",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "City",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text("Wil. Kota jakarta Barat",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Address",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                              "Jl. Kyi Tapa 1 Jakarta Barat",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Purpose",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                              "Jual beli aset nonfinansial - marketing assets seperti franchise, brand names",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Description",
                                            style: TextStyle(
                                                color: HexColor('#2F476D'),
                                                fontSize: 16),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text("Oke transfer",
                                              style: TextStyle(
                                                  color: HexColor('#2F476D'),
                                                  fontSize: 16),
                                              textAlign: TextAlign.right),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 20),
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
                                      "Estimated arrival: remittance will be processed within 1 business day",
                                      style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 16,
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
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    flex: 1,
                                    child: Transform.scale(
                                      scale: 1.5,
                                      child: Checkbox(
                                        value: isChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        },
                                      ),
                                    )),
                                Expanded(
                                    flex: 5,
                                    child: Text(
                                      "I agree to be debited by Bank Sinarmas if there are additional fees related to Remittance transaction, fees that charged by destination bank or other parties as Remittance processors.",
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal),
                                    ))
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
                              isChecked
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const RemittanceBankInfo(),
                                      ),
                                    )
                                  : null;
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
