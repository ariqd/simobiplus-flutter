import 'package:flutter/material.dart';
import 'package:simobiplus/fundtransfer/RemittanceBankInformation.dart';
import 'package:simobiplus/fundtransfer/RemittanceSender.dart';
import 'package:simobiplus/packages/simas_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:simobiplus/components/sinarmas_button_rounded.dart';
import 'package:hexcolor/hexcolor.dart';

class RemittanceRecipient extends StatefulWidget {
  const RemittanceRecipient({
    super.key,
  });

  @override
  State<RemittanceRecipient> createState() => _RemittanceRecipientState();
}

class _RemittanceRecipientState extends State<RemittanceRecipient> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _RemittanceRecipientFormKey = GlobalKey<FormState>();
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
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(height: !_keyboardVisible ? 10 : 120),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                            child: IconButton(
                          alignment: Alignment.centerLeft,
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: HexColor('#2F476D'),
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )),
                        Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: HexColor('#3892FC'),
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.grey,
                              ),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Enter recipient data',
                            style: TextStyle(
                                fontSize: 30,
                                color: HexColor('#2F476D'),
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Form(
                          key: _RemittanceRecipientFormKey,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Account Number',
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
                                  labelText: 'Select Currency',
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
                                  labelText: 'Name',
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
                              const SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'State/City/Province',
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
                                  labelText: 'Address',
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
                                  labelText: 'Purpose',
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
                                  labelText: 'Description',
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
                              SizedBox(height: 30),
                              SinarmasButtonRounded(
                                'CONTINUE',
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RemittanceSender(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}