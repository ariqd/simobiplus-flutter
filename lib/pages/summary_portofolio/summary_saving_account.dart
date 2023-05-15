import 'package:flutter/material.dart';
import '../transaction_history/transaction_history.dart';
import './summary_card.dart';

class SummarySavingAccount extends StatefulWidget {
  const SummarySavingAccount({super.key});

  @override
  State<SummarySavingAccount> createState() => _SummarySavingAccountState();
}

class _SummarySavingAccountState extends State<SummarySavingAccount> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SummaryPortofolioCard(),
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
    );
  }
}
