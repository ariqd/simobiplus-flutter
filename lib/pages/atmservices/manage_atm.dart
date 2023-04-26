import 'package:flutter/material.dart';
import 'package:simobiplus/pages/atmservices/atm_services_list.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';
import 'package:simobiplus/pages/atmservices/activate_atm.dart';
import 'package:simobiplus/pages/atmservices/block_atm.dart';

class ManageATM extends StatelessWidget {
  const ManageATM({super.key});

  showActivateATMDialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              constraints: BoxConstraints(maxHeight: 320),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                    child: Column(
                  children: [
                    paddingvertical(size: 40),
                    Image.asset(
                      'assets/images/attention.png',
                      height: 60,
                      width: 60,
                    ),
                    paddingvertical(size: 15),
                    Text(
                      'Are you sure?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Roboto'),
                    ),
                    paddingvertical(size: 20),
                    SizedBox(
                        //width: 100,
                        width: MediaQuery.of(context).size.width -
                            160, //this is the total width of your screen
                        child: Center(
                          child: Text(
                            'Please make sure you already receive the ATM card',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Roboto'),
                          ),
                        )),
                    paddingvertical(size: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            paddinghorizontal(size: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: SizedBox(
                                width: 120,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ActivateATM(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      backgroundColor: Color(0xffF9F8FD)),
                                  child: Text(
                                    'NO',
                                    style: TextStyle(
                                        color: Color(0xffFA3F70),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ),
                            paddinghorizontal(size: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minWidth: 120,
                                  minHeight: 50,
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ActivateATM(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                  child: Text(
                                    'YES',
                                    style: TextStyle(
                                        color: Color(0xffF9F8FD),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ),
                            paddinghorizontal(size: 10),
                          ],
                        ),
                      ],
                    )
                  ],
                )),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Choose Services'),
          backgroundColor: Color(0xffFA3F70),
          centerTitle: true,
          leading: const BackButton(
            color: Colors.white, // <-- SEE HERE
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
                      Text(
                        'Choose Your Services',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            fontFamily: 'Roboto'),
                      ),
                      paddinghorizontal(size: 20),
                    ],
                  ),
                  paddingvertical(size: 20),
                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              showActivateATMDialog(context);
                            },
                            child: ATMServicesList(
                                menuTitle: 'Activate ATM Card',
                                menuTxt:
                                    'Easy to activate your ATM Card in anywhere at anytime you want!',
                                menuIcon: 'assets/images/activateatmcard.png')),
                      ],
                    ),
                  ),
                  paddingvertical(size: 20),
                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const BlockATM(),
                                ),
                              );
                            },
                            child: ATMServicesList(
                                menuTitle: 'Block ATM Card',
                                menuTxt:
                                    "Let's go keep your datas stay safe even your ATM Card is missing!",
                                menuIcon: 'assets/images/blockatmcard.png')),
                      ],
                    ),
                  ),
                  paddingvertical(size: 20),
                  Center(
                    child: Column(
                      children: [
                        ATMServicesList(
                            menuTitle: 'Request ATM Card',
                            menuTxt:
                                'Get a new ATM Card by your current saving account for better transactions!',
                            menuIcon: 'assets/images/addnewatmcard.png')
                      ],
                    ),
                  ),
                  paddingvertical(size: 10),
                  Center(
                    child: Column(
                      children: [
                        ATMServicesList(
                            menuTitle: 'Closing Saving Account',
                            menuTxt:
                                'Close your unused Saving Account 100% online with few simple steps',
                            menuIcon: 'assets/images/closesavingacc.png')
                      ],
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
