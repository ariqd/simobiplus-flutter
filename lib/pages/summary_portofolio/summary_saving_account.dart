import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../transaction_history/transaction_history.dart';
import './card/summary_card.dart';

class SummarySavingAccount extends StatefulWidget {
  const SummarySavingAccount({super.key});

  @override
  State<SummarySavingAccount> createState() => _SummarySavingAccountState();
}

class _SummarySavingAccountState extends State<SummarySavingAccount> {
  bool _amountVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SummaryPortofolioCard(
            backgroundImage:
                const AssetImage("assets/images/cards/savings.png"),
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
                              const ClipboardData(text: "0052834473"),
                            ).then((_) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Account Number copied to your clipboard!',
                                  ),
                                ),
                              );
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
          Container(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TransactionHistory(),
                      ),
                    );
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
      ),
    );
  }
}
