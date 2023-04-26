import 'package:flutter/material.dart';
import 'package:simobiplus/fundtransfer/fundtransfer.dart';
import 'package:simobiplus/pages/dashboard/dashboard.dart';
import 'package:simobiplus/pages/accountmenu/account_menu.dart';
import 'package:simobiplus/packages/simas_icons.dart';
import 'package:simobiplus/util/fab_bottom_app_bar.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MyStatefulWidget();
  }
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    FundTransfer(),
    Text(
      'Index 2: Cash',
      style: optionStyle,
    ),
    AccountMenu(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final iconList = [
      Simas.new_home,
      Simas.new_send,
      Simas.new_cash,
      Simas.gear_setting
    ];
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffFA3F70),
        onPressed: () {},
        child: Icon(Simas.scan_to_pay_e_money),
        elevation: 0.0,
      ),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'QRIS',
        color: Colors.black,
        selectedColor: Colors.red,
        // notchedShape: CircularNotchedRectangle(),
        backgroundColor: Colors.white,
        onTabSelected: _onItemTapped,
        items: [
          FABBottomAppBarItem(iconData: Simas.new_home, text: 'HOME'),
          FABBottomAppBarItem(iconData: Simas.new_send, text: 'SEND'),
          FABBottomAppBarItem(iconData: Simas.new_cash, text: 'Cash'),
          FABBottomAppBarItem(iconData: Simas.gear_setting, text: 'Setting'),
        ],
        activeitems: [
          FABBottomAppBarActiveItem(
              iconData: Simas.new_home_active, text: 'HOME'),
          FABBottomAppBarActiveItem(
              iconData: Simas.new_send_active, text: 'SEND'),
          FABBottomAppBarActiveItem(
              iconData: Simas.new_cash_active, text: 'Cash'),
          FABBottomAppBarActiveItem(
              iconData: Simas.gear_setting, text: 'Setting'),
        ],
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
