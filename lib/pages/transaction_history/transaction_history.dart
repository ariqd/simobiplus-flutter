import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simobiplus/components/sinarmas_button.dart';
import 'package:simobiplus/packages/simas_icons.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  // ignore: non_constant_identifier_names
  final _TransactionHistoryFormKey = GlobalKey<FormState>();
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Simas.close,
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'RESET',
              // style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Form(
                key: _TransactionHistoryFormKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: RadioListTile(
                              controlAffinity: ListTileControlAffinity.trailing,
                              title: const Text('Today'),
                              value: 1,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 40,
                            height: 1,
                            color: Colors.grey.shade300,
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: RadioListTile(
                              controlAffinity: ListTileControlAffinity.trailing,
                              title: const Text('This Month'),
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 40,
                            height: 1,
                            color: Colors.grey.shade300,
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: RadioListTile(
                              controlAffinity: ListTileControlAffinity.trailing,
                              title: const Text('Select Month'),
                              value: 3,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 40,
                            height: 1,
                            color: Colors.grey.shade300,
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: RadioListTile(
                              controlAffinity: ListTileControlAffinity.trailing,
                              title: const Text('Select Date Range'),
                              value: 4,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(15),
                      child: SinarmasButton(
                        'APPLY',
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
