import 'package:flutter/material.dart';
import 'package:simobiplus/pages/atmservices/atm_services_list.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';
import 'package:simobiplus/fundtransfer/fundtransfer.dart';

class BlockATM extends StatelessWidget {
  const BlockATM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Blocked ATM Card',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
              )),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: const BackButton(
            color: Color(0xffFA3F70), // <-- SEE HERE
          ),
        ),
        body: Container(
          color: Color(0xffF9F8FD),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  paddingvertical(size: 20),
                  Row(
                    children: [
                      // paddingvertical(
                      //   size: MediaQuery.of(context).size.height * 0.25,
                      // ),
                      paddinghorizontal(size: 20),
                      SizedBox(
                          //width: 100,
                          width: MediaQuery.of(context).size.width - 40,
                          child: Text(
                            'Choose your ATM card for Block',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                fontFamily: 'Roboto'),
                          )),
                      paddinghorizontal(size: 20),
                    ],
                  ),
                  paddingvertical(size: 20),
                  Row(
                    children: [
                      paddinghorizontal(size: 20),
                      Center(
                          child: Column(children: [
                        GestureDetector(
                            onTap: () {
                              // showActivateATMDialog(context);
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    paddingvertical(size: 25),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        paddinghorizontal(size: 10),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Image.asset(
                                                'assets/images/saving-gold.png',
                                                height: 60,
                                                width: 100,
                                              ),
                                            ),
                                            paddinghorizontal(size: 10),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  //width: 100,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      180, //this is the total width of your screen
                                                  child: Text(
                                                    'Tabungan Simas Payroll',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto'),
                                                  ),
                                                ),
                                                paddingvertical(size: 5),
                                                SizedBox(
                                                  //width: 100,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      180, //this is the total width of your screen
                                                  child: Text(
                                                    'Account Number: 0012312312',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            'Roboto-Light'),
                                                    // overflow: TextOverflow.ellipsis,
                                                    // softWrap: false,
                                                  ),
                                                ),
                                                SizedBox(
                                                  //width: 100,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      180, //this is the total width of your screen
                                                  child: Text(
                                                    'Card Number: 1231231231231231',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            'Roboto-Light'),
                                                    // overflow: TextOverflow.ellipsis,
                                                    // softWrap: false,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 0),
                                                  child: ConstrainedBox(
                                                    constraints:
                                                        const BoxConstraints(
                                                      minWidth: 120,
                                                      // minHeight: 50,
                                                    ),
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        // Navigator.push(
                                                        //   context,
                                                        //   MaterialPageRoute(
                                                        //     builder: (context) =>
                                                        //         const ActivateATM(),
                                                        //   ),
                                                        // );
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        'Block',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xffF9F8FD),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Roboto'),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            paddinghorizontal(size: 10),
                                          ],
                                        ),
                                      ],
                                    ),
                                    paddingvertical(size: 20),
                                  ],
                                )))
                      ])),
                      paddinghorizontal(size: 20),
                    ],
                  ),
                  paddingvertical(size: 30),
                ],
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  paddingvertical(size: 10),
                  Row(
                    children: [
                      paddinghorizontal(size: 20),
                      Center(
                          child: Column(children: [
                        Container(
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              // color: Colors.white,
                              border: Border.all(
                                  width: 1, color: Color(0xffECECEC)),
                            ),
                            child: Column(
                              children: [
                                paddingvertical(size: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    paddinghorizontal(size: 10),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            'assets/images/caution-circle.png',
                                            height: 25,
                                            width: 25,
                                          ),
                                        ),
                                        paddinghorizontal(size: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              //width: 100,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  100, //this is the total width of your screen
                                              child: Text(
                                                'Your ATM Card will be block permanently, for card replacement please visit nearest Bank Sinarmas branch office with your :\n1. ID (eKTP / SIM)\n2. Saving passbook (if any)\n3. Lost report from police (if your ATM Card lost)',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 14,
                                                    fontFamily: 'Roboto'),
                                                // overflow: TextOverflow.ellipsis,
                                                // softWrap: false,
                                              ),
                                            ),
                                          ],
                                        ),
                                        paddinghorizontal(size: 10),
                                      ],
                                    ),
                                  ],
                                ),
                                paddingvertical(size: 20),
                              ],
                            ))
                      ])),
                      paddinghorizontal(size: 20),
                    ],
                  ),
                  paddingvertical(size: 30),
                ],
              ),
            ],
          ),
        ));
  }
}
