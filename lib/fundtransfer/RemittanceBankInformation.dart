import 'package:flutter/material.dart';
import 'package:simobiplus/fundtransfer/RemittanceRecipient.dart';
import 'package:simobiplus/fundtransfer/RemittanceSwiftCode.dart';
import 'package:simobiplus/fundtransfer/addPayeeAccount.dart';
import 'package:simobiplus/fundtransfer/listTransferType.dart';
import 'package:simobiplus/packages/simas_icons.dart';
import 'package:simobiplus/pages/login/login.dart';

import 'package:flutter/gestures.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';
import 'package:simobiplus/bottombar.dart';
import 'package:hexcolor/hexcolor.dart';

class RemittanceBankInfo extends StatefulWidget {
  const RemittanceBankInfo({
    super.key,
  });

  @override
  State<RemittanceBankInfo> createState() => _RemittanceBankInfoState();
}

class _RemittanceBankInfoState extends State<RemittanceBankInfo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _RemittanceBankInformationFormKey = GlobalKey<FormState>();
  bool _keyboardVisible = false;

  @override
  Widget build(BuildContext context) {
    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(top: 50),
              color: Theme.of(context).primaryColor,
              width: double.infinity,
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              // width: double.infinity,
              transform: Matrix4.translationValues(0.0, -70.0, 0.0),
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  SizedBox(height: !_keyboardVisible ? 10 : 120),
                  Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.only(right: 50),
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: HexColor('#2F476D'),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Bank Information',
                      style: TextStyle(
                          fontSize: 30,
                          color: HexColor('#2F476D'),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Please submit the document below to process your application',
                      style:
                          TextStyle(fontSize: 16, color: HexColor('#2F476D')),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Form(
                    key: _RemittanceBankInformationFormKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'SWIFT Code',
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
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Bank',
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
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Country',
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
                        const SizedBox(height: 30),
                        Container(
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
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
                                      "Remittance transactions to domestic destination banks only can be addressed to the same name with the sender",
                                      style: TextStyle(
                                          color: HexColor('#2F476D'),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        SinarmasButtonRounded(
                          'CONTINUE',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RemittanceRecipient(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
