import 'package:flutter/material.dart';
import 'package:simobiplus/pages/summary_portofolio/summary_portofolio_header.dart';
import 'package:simobiplus/pages/summary_portofolio/summary_saving_account.dart';
import 'package:simobiplus/pages/summary_portofolio/summary_time_deposit.dart';

class SummaryPortofolio extends StatefulWidget {
  const SummaryPortofolio({super.key});

  @override
  State<SummaryPortofolio> createState() => _SummaryPortofolioState();
}

class _SummaryPortofolioState extends State<SummaryPortofolio>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late bool fixedScroll;
  int _selectedTabbar = 0;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  const SummaryPortofolioHeader(),
                  TabBar(
                    onTap: (index) {
                      setState(() {
                        _selectedTabbar = index;
                      });
                    },
                    controller: _tabController,
                    isScrollable: true,
                    labelColor: Colors.black,
                    labelStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    tabs: const [
                      Tab(text: 'Account'),
                      Tab(text: 'Time Deposit'),
                      Tab(text: 'Credit Card'),
                    ],
                  ),
                  Builder(builder: (_) {
                    if (_selectedTabbar == 0) {
                      return const SummarySavingAccount(); //1st custom tabBarView
                    } else if (_selectedTabbar == 1) {
                      return const SummaryTimeDeposit(); //1st custom tabBarView
                    } else {
                      return const SummarySavingAccount(); //1st custom tabBarView
                    }
                  }),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
