import 'package:flutter/material.dart';
import 'package:simobiplus/packages/simas_icons.dart';
import 'package:simobiplus/pages/dashboard/dashboard.dart';
import 'package:intl/intl.dart';

class SummaryPortofolioHeader extends StatefulWidget {
  const SummaryPortofolioHeader({super.key});
  @override
  State<SummaryPortofolioHeader> createState() =>
      _SummaryPortofolioHeaderState();
}

class _SummaryPortofolioHeaderState extends State<SummaryPortofolioHeader> {
  bool _expanded = false;

  final List<dynamic> _balances = [
    {'name': 'Savings', 'value': 200000},
    {'name': 'Current', 'value': 300000},
    {'name': 'Time Deposit', 'value': 1200000},
    {'name': 'Rekening Dana Nasabah (RDN)', 'value': 0},
  ];

  final formatCurrency = NumberFormat.currency(locale: 'id', symbol: 'Rp ');

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: _expanded ? 350 : 200,
      padding: const EdgeInsets.fromLTRB(40, 80, 40, 40),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const Dashboard()),
                      (route) => false);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Simas.new_home_active,
                        color: Theme.of(context).primaryColor,
                        size: 40,
                      ),
                      Text(
                        'HOME',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Summary Portofolio',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 8),
                    OutlinedButton(
                      onPressed: () {
                        print('Show Detail');
                        setState(() {
                          _expanded = !_expanded;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: const Color(0xfffb658c),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text(
                            'Show Detail',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 20,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Visibility(
            visible: _expanded,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    for (var balance in _balances)
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              balance['name'],
                              style: const TextStyle(color: Colors.white),
                            ),
                            Text(
                              formatCurrency.format(balance['value']),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
