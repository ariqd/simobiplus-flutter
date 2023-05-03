import 'package:flutter/material.dart';
import 'package:simobiplus/styling/greyLineFull.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

List<DropdownMenuItem<String>> get bankList{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Select Bank"),value: "00"),
    DropdownMenuItem(child: Text("Bank Sinarmas"),value: "Bank Sinarmas"),
    DropdownMenuItem(child: Text("Mandiri"),value: "Mandiri"),
    DropdownMenuItem(child: Text("BCA"),value: "BCA"),
    DropdownMenuItem(child: Text("Danamon"),value: "Danamon"),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get billerList{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("Select Biller"),value: "00"),
    DropdownMenuItem(child: Text("OVO"),value: "OVO"),
    DropdownMenuItem(child: Text("Go-Pay Customer"),value: "Go-Pay Customer"),
    DropdownMenuItem(child: Text("Tokopedia"),value: "Tokopedia"),
    DropdownMenuItem(child: Text("ShoppePay"),value: "ShoppePay"),
  ];
  return menuItems;
}

class AccountFavoriteTransaction extends StatefulWidget {
  const AccountFavoriteTransaction({
    super.key,
  });

  @override
  State<AccountFavoriteTransaction> createState() => AccountFavoriteTransactionState();
}

class AccountFavoriteTransactionState extends State<AccountFavoriteTransaction> {
  bool inetEnabled = false;

  //Search
  final searchValue = TextEditingController();
  bool isSearching = false;
  String searchText = '';
  List searchResults = [];

  //Fav Bank
  final accNum = TextEditingController();
  final accName = TextEditingController();
  String selectedBank = '00';

  //Fav Biller
  final alias = TextEditingController();
  final subName = TextEditingController();
  String selectedBiller = '00';


  AccountFavoriteTransactionState() {
    searchValue.addListener(() {
      if(searchValue.text.isEmpty){
        setState(() {
          isSearching = false;
          searchText = '';
        });
      }else{
        setState(() {
          isSearching = true;
          searchText = searchValue.text;
        });
      }
    });
  }

  void dispose() {
    searchValue.dispose();
    accNum.dispose();
    accName.dispose();
    alias.dispose();
    subName.dispose();
    super.dispose();
  }

  final List<dynamic> favItems = [
    {
      'alias': 'ovo',
      'accNum' : '0813821883442',
      'biller': 'OVO'
    },
    {
      'alias': 'test',
      'accNum' : '2412412',
      'biller': 'OVO'
    },
    {
      'alias': 'sdgsds',
      'accNum' : '90900',
      'biller': 'OVO'
    },
    {
      'alias': 'Joel Geraldine',
      'accNum' : '51239128391',
      'biller': 'Bank Sinarmas'
    },
    {
      'alias': 'tokped test',
      'accNum' : '0813821883442',
      'biller': 'Tokopedia'
    },
    {
      'alias': 'jo test',
      'accNum' : '124125',
      'biller': 'Tokopedia'
    },
    {
      'alias': 'bank',
      'accNum' : '12412511',
      'biller': 'BCA'
    },
  ];

  void addItem(alias, subName, selectedBiller) {
    Object newFav = {
      'alias' : alias,
      'accNum' : subName,
      'biller' : selectedBiller
    };

    setState(() {
      favItems.add(newFav);
    });
  }

  void runSearch(String searchText) {
    searchResults.clear();
    if(isSearching) {
      for(int i = 0;i < favItems.length; i++) {
        String alias = favItems[i]['alias'];
        String num = favItems[i]['accNum'];
        String name = favItems[i]['biller'];
        if(alias.toLowerCase().contains(searchText.toLowerCase()) ||
        num.toLowerCase().contains(searchText.toLowerCase()) ||
        name.toLowerCase().contains(searchText.toLowerCase())){
          searchResults.add(favItems[i]);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Favorite Transaction', style: TextStyle(color: Colors.black, fontSize: 18)),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const BackButton(
            color: Color(0xffFA3F70), // <-- SEE HERE
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width * 1,
          color: Colors.white,
          child: Column (
            children: [

              Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                    controller: searchValue,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                      labelText: 'Number / Name / Alias',
                      suffixIcon: Icon(Icons.search, color: Colors.black, size: 30,)
                    ),
                    onChanged: runSearch,
                  ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Align (
                  alignment: Alignment.centerRight,
                  child: 
                  GestureDetector(
                    onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => ChooseFavType(context),
                            );
                          },
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.add, color: Color(0xffFA3F70),),
                        Text('New Favorite', style: TextStyle(fontSize: 15, color: Color(0xffFA3F70))),
                      ],
                    ))
                )
                ), 

              favItems.length != 0 ?
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                child: searchResults.length != 0 || searchValue.text.isNotEmpty ?
                ListView.separated(
                  itemCount: searchResults.length,
                  itemBuilder: (BuildContext context, int index) {
                              final items = index;
                              return Slidable(
                                  endActionPane: ActionPane(
                                      extentRatio: 0.2,
                                      motion: StretchMotion(),
                                      children: [
                                        SlidableAction(
                                          onPressed: (context) =>
                                              _onDismissed(context, index, true),
                                          icon: Icons.delete,
                                          // label: 'Delete',
                                          backgroundColor: Colors.pink,
                                        )
                                      ]),
                                  child: favList(items, searchResults));
                            },
                  separatorBuilder: (BuildContext context, int index) =>
                                const Divider(),
                )
                :
                ListView.separated(
                  itemCount: favItems.length,
                  itemBuilder: (BuildContext context, int index) {
                              final items = index;
                              return Slidable(
                                  endActionPane: ActionPane(
                                      extentRatio: 0.2,
                                      motion: StretchMotion(),
                                      children: [
                                        SlidableAction(
                                          onPressed: (context) =>
                                              _onDismissed(context, index, false),
                                          icon: Icons.delete,
                                          // label: 'Delete',
                                          backgroundColor: Colors.pink,
                                        )
                                      ]),
                                  child: favList(items, favItems));
                            },
                  separatorBuilder: (BuildContext context, int index) =>
                                const Divider(),
                ),
              )
              :
              Text('Nothing to show', style: TextStyle(color: Colors.grey)),
              
            ],
          ),
        )
        );
  }

  void _onDismissed(BuildContext context, int index, bool isSearching) {
    if(isSearching){
      setState(() {
        favItems.removeWhere((element) => element == searchResults[index]);
        searchResults.removeAt(index);
      });
    }else{
      setState(() {
        favItems.removeAt(index);
      });
    }
  }

  Widget favList(items, List favItems) => ListTile(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            height: 50,
            color: Colors.white,
            // child: Center(child: Text('Entry ${_items[index]}')),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      favItems[items]['alias'],
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      favItems[items]['accNum'],
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Text(
                        favItems[items]['biller'],
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(
                          child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                        color: Colors.grey,
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        onTap: () {},
  );

  Widget ChooseFavType(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      contentPadding: EdgeInsets.only(top: 20, right: 20, left: 20),
      content: 
      Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: 
        Column(
          children: [
           
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: GestureDetector(
                onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => NewFavBank(context),
                        );
                      },
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('New Bank Account', style: TextStyle(fontSize: 15, color: Colors.black)),
                  ],
                )
              ),
            ),

            greyLineFull(),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: GestureDetector(
                onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => NewFavBiller(context),
                        );
                      },
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('New Biller', style: TextStyle(fontSize: 15, color: Colors.black)),
                  ],
                )
              ),
            ),
            
          ],
        ),
      ),
    );
  }

  Widget NewFavBank(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      contentPadding: EdgeInsets.only(top: 20, right: 20, left: 20),
      content: 
      Container(
        height: MediaQuery.of(context).size.height * 0.40,
        width: MediaQuery.of(context).size.width * 1,
        child: 
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: Text('New Bank Account', 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Roboto')),
            ),
            
            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: TextFormField(
                    controller: accNum,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Account Number',
                    ),
                  ),
            ),

            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Text('Bank Name or Code', style: TextStyle(color: Colors.grey,fontSize: 18), textAlign: TextAlign.left,)
            ),

            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: 
              DropdownButtonFormField(
                items: bankList,
                hint: Text('Select Bank', style: TextStyle(color: Colors.grey,fontSize: 18)),
                style: TextStyle(color: Colors.black, fontSize: 18),
                icon: Icon(Icons.expand_more),
                value: selectedBank,
                onChanged: 
                  (String? newValue){
                    setState(() {
                      selectedBank = newValue!;
                      if (newValue != '00'){
                        accName.text = 'RINTIS';
                      }else{
                        accName.text = '';
                      }
                      
                    });
                  },
                )
            ),

            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: TextFormField(
                    controller: accName,
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Account Name',
                    ),
                  ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'CANCEL'),
                    child: const Text('CANCEL', style: TextStyle(color: Color(0xffFA3F70), fontSize: 18)),
                  ),
                  TextButton(
                    onPressed: accNum.text.isEmpty || accName.text.isEmpty || selectedBank == '00' ? null : () {
                      addItem(accName.text, accNum.text, selectedBank);
                      setState(() {
                        accName.text = '';
                        accNum.text = '';
                        selectedBank = '00';
                      });
                      int count = 0;
                      Navigator.popUntil(context, (route) {
                          return count++ == 2;
                      });
                    },
                    child: Text('SAVE', style: TextStyle(
                      color: accNum.text.isEmpty || accName.text.isEmpty || selectedBank == '00' ? Colors.grey :Color(0xffFA3F70), 
                      fontSize: 18)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget NewFavBiller(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      contentPadding: EdgeInsets.only(top: 20, right: 20, left: 20),
      content: 
      Container(
        height: MediaQuery.of(context).size.height * 0.40,
        width: MediaQuery.of(context).size.width * 1,
        child: 
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20, bottom: 20),
              child: Text('Add new Biller', 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Roboto')),
            ),

            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Text('Biller Name', style: TextStyle(color: Colors.grey,fontSize: 14), textAlign: TextAlign.left,)
            ),
            
            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: 
              DropdownButtonFormField(
                items: billerList,
                hint: Text('Select Biller', style: TextStyle(color: Colors.grey,fontSize: 18)),
                style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                icon: Icon(Icons.expand_more),
                value: selectedBiller,
                onChanged: 
                  (String? newValue){
                    setState(() {
                      selectedBiller = newValue!;
                    });
                  },
                )
            ),

            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: TextFormField(
                    controller: alias,
                    decoration: InputDecoration(
                      labelText: 'Alias',
                    ),
                  ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: TextFormField(
                    controller: subName,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Subscriber number',
                    ),
                  ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'CANCEL'),
                    child: const Text('CANCEL', style: TextStyle(color: Color(0xffFA3F70), fontSize: 18)),
                  ),
                  TextButton(
                    onPressed:alias.text.isEmpty || subName.text.isEmpty || selectedBiller == '00' ? null : () {
                      addItem(alias.text, subName.text, selectedBiller);
                      setState(() {
                        alias.text = '';
                        subName.text = '';
                        selectedBiller = '00';
                      });
                      int count = 0;
                      Navigator.popUntil(context, (route) {
                          return count++ == 2;
                      });
                    },
                    child: Text('SAVE', style: TextStyle(
                      color: alias.text.isEmpty || subName.text.isEmpty || selectedBiller == '00' ? Colors.grey :Color(0xffFA3F70), 
                      fontSize: 18)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}


