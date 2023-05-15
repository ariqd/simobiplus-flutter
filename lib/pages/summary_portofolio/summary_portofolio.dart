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

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);

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
      resizeToAvoidBottomInset: false,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverToBoxAdapter(child: SummaryPortofolioHeader()),
            SliverToBoxAdapter(
              child: TabBar(
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
                  Tab(text: 'Loan'),
                  Tab(text: 'Investment'),
                  Tab(text: 'Others'),
                ],
              ),
            ),
          ],
          // The content of each tab
          body: TabBarView(
            controller: _tabController,
            children: const [
              SummarySavingAccount(),
              SummaryTimeDeposit(),
              SummarySavingAccount(),
              SummaryTimeDeposit(),
              SummarySavingAccount(),
              SummaryTimeDeposit(),
            ],
          ),
        ),
      ),
    );
  }
}
