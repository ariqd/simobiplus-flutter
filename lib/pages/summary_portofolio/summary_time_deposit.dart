import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:simobiplus/packages/simas_icons.dart';

class SummaryTimeDeposit extends StatefulWidget {
  const SummaryTimeDeposit({super.key});

  @override
  State<SummaryTimeDeposit> createState() => _SummaryTimeDepositState();
}

class _SummaryTimeDepositState extends State<SummaryTimeDeposit> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 250,
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 5,
            child: DefaultTextStyle(
              style: const TextStyle(color: Colors.white),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/cards/time_deposit.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Time\nDeposit',
                      style: TextStyle(fontSize: 36),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          width: double.infinity,
          // decoration: const BoxDecoration(
          //   border: Border(
          //     top: BorderSide(width: 0.5, color: Colors.grey),
          //     bottom: BorderSide(width: 0.5, color: Colors.grey),
          //   ),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Time Deposit',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black12),
                  ),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                  leading: Icon(
                    Simas.bling,
                    color: Colors.amber,
                  ),
                  title: Text('Easy & simple to create, whenever, wherever'),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black12),
                  ),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                  leading: Icon(
                    Simas.bling,
                    color: Colors.amber,
                  ),
                  title: Text('Competitive interest rate'),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black12),
                  ),
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                  leading: Icon(
                    Simas.bling,
                    color: Colors.amber,
                  ),
                  title: Text('Start from IDR 500,000 only'),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: double.infinity,
                  minHeight: 50,
                ),
                child: Container(
                  height: 44.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.amber.shade900,
                        Colors.amber.shade500,
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "OPEN NEW TIME DEPOSIT",
                        ),
                        Icon(Simas.Plus)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
