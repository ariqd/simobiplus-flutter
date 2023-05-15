import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simobiplus/fundtransfer/RemittanceSwiftCode.dart';
import 'package:simobiplus/fundtransfer/addPayeeAccount.dart';
import 'package:simobiplus/fundtransfer/listTransferType.dart';
import 'package:simobiplus/pages/login/login.dart';

class FundTransfer extends StatefulWidget {
  const FundTransfer({
    super.key,
  });

  @override
  State<FundTransfer> createState() => _FundTransferState();
}

class _FundTransferState extends State<FundTransfer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
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
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'FundTransfer',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
            ),
          ),
          Expanded(
            flex: 7,
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
                  SizedBox(height: !_keyboardVisible ? 20 : 120),
                  const SizedBox(height: 15),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Transfer Type',
                      style: TextStyle(
                          fontSize: 20,
                          color: HexColor('#2F476D'),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Please select the type of transfer',
                      style:
                          TextStyle(fontSize: 14, color: HexColor('#2F476D')),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      ListTransferType(
                        iconImagePath: 'assets/images/Trf_domestik.png',
                        typeTitle: 'Transfer Domestik',
                        subName: 'Money transfer to domestik bank',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddPayeeAccount()),
                          );
                        },
                      ),
                      ListTransferType(
                        iconImagePath: 'assets/images/remittance.png',
                        typeTitle: 'Remittance',
                        subName:
                            'Money transfer to other bank in foreign currency',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SwiftCode()),
                          );
                        },
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
