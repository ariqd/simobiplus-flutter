import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SummarySavingAccount extends StatefulWidget {
  const SummarySavingAccount({super.key});

  @override
  State<SummarySavingAccount> createState() => _SummarySavingAccountState();
}

class _SummarySavingAccountState extends State<SummarySavingAccount> {
  bool _amountVisible = false;

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
                    image: AssetImage("assets/images/cards/savings.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Tabungan Simas Payroll',
                          style: TextStyle(fontSize: 16),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _amountVisible = !_amountVisible;
                            });
                          },
                          icon: Icon(
                            _amountVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                            size: 24,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 40,
                      child: Text(
                        _amountVisible
                            ? 'IDR 20.000.000'
                            : 'Your balance is hidden',
                        style: TextStyle(fontSize: _amountVisible ? 28 : 18),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Account Number',
                      style: TextStyle(fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              '0052834473',
                              style: TextStyle(fontSize: 18),
                            ),
                            IconButton(
                              onPressed: () {
                                Clipboard.setData(
                                        const ClipboardData(text: "0052834473"))
                                    .then((_) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              'Account Number copied to your clipboard!')));
                                });
                              },
                              icon: const Icon(
                                Icons.copy,
                                color: Colors.white,
                                size: 24,
                              ),
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                            size: 24,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 0.5, color: Colors.grey),
              bottom: BorderSide(width: 0.5, color: Colors.grey),
            ),
          ),
          child: DefaultTextStyle(
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w500),
            child: SizedBox(
              height: 70,
              child: InkWell(
                onTap: () {
                  print('go to transaction history');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.history,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text('Transaction History'),
                      ],
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
