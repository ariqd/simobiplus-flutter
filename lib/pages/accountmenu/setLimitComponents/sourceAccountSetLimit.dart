import 'package:flutter/material.dart';

class SourceAccountLimit extends StatefulWidget {
  const SourceAccountLimit(
    {
      super.key,
    }
  );

  @override
  State<SourceAccountLimit> createState() => _SourceAccountState();
}

class _SourceAccountState extends State<SourceAccountLimit> {
  final List<dynamic> _items = [
    {
      'accountName': 'Fendi Setiyanto',
      'accountNumber': '38085713881671',
      'productName': 'TabunganKu',
      'balance': '2000000',
      'productType': 'savingT24'
    },
    {
      'accountName': 'Fendi Setiyanto',
      'accountNumber': '38085713881671',
      'productName': 'Tabungan Simas Payroll',
      'balance': '1800000',
      'productType': 'savingT24'
    },
  ];
  final List<dynamic> _itemsBifast = [];
  final String payeeStatus = 'success';

  @override
  Widget build(BuildContext context) {
    final count = _items.length;
    return Scaffold(
      backgroundColor: Colors.white,
      //You should use `Scaffold` if you have `TextField` in body.
      //Otherwise on focus your `TextField` won`t scroll when keyboard popup.
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          'Source Account',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xffFA3F70),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.white, // <-- SEE HERE
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //Body Container
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Choose Source Account",
                          style: TextStyle(
                              color: Color.fromARGB(225, 47, 71, 109),
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 800,
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: ListView.separated(
                                  padding: const EdgeInsets.all(8),
                                  itemCount: _items.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    final items = index;
                                    return buildListHistoryTrf(items);
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) =>
                                          const Divider(),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListHistoryTrf(items) => ListTile(
        title: Container(
            height: 150,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: _items[items]['productType'] == 'emoney'
                          ? Image.asset(
                              'assets/images/simas-emoney.png',
                              width: 80,
                            )
                          : Image.asset(
                              'assets/images/saving-paycard.png',
                              width: 80,
                            )
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _items[items]['accountNumber'],
                          style: TextStyle(color: Colors.grey[800], fontSize: 14),
                        ),
                        SizedBox(height: 5),
                        Text(
                          _items[items]['productName'],
                          style: TextStyle(color: Colors.grey[600], fontSize: 14),
                        ),
                        SizedBox(height: 5),
                        Text(
                          _items[items]['accountName'],
                          style: TextStyle(color: Colors.grey[600], fontSize: 14),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              "IDR",
                              style:
                                  TextStyle(color: Colors.grey[600], fontSize: 14),
                            ),
                            SizedBox(width: 10),
                            Text(
                              _items[items]['balance'],
                              style:
                                  TextStyle(color: Colors.grey[600], fontSize: 14),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                    child: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Colors.black,
                )),
              ],
            )),
        onTap: () {},
      );
}
