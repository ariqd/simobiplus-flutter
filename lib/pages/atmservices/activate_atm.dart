import 'package:flutter/material.dart';
import 'package:simobiplus/pages/atmservices/atm_services_list.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';
import 'package:simobiplus/fundtransfer/fundtransfer.dart';

class ActivateATM extends StatelessWidget {
  const ActivateATM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Activate ATM Card',
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
        body: SingleChildScrollView(
            child: Container(
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
                            'Choose your ATM card for Activate',
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
                  Center(
                    child: Text(
                      'No Inactive ATM Card',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  paddingvertical(size: 30),
                ],
              )
            ],
          ),
        )));
  }
}
