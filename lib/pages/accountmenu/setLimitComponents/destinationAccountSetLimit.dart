import 'package:flutter/material.dart';
import 'package:simobiplus/styling/greyLineFull.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class DestinationAccountSetLimit extends StatefulWidget {
  const DestinationAccountSetLimit({
    super.key,
  });

  @override
  State<DestinationAccountSetLimit> createState() => DestinationAccountSetLimitState();
}

class DestinationAccountSetLimitState extends State<DestinationAccountSetLimit> {
  bool inetEnabled = false;

  //Search
  final searchValue = TextEditingController();
  bool isSearching = false;
  String searchText = '';
  List searchResults = [];

  DestinationAccountSetLimitState() {
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
    super.dispose();
  }

  final List<dynamic> transferList = [
    {
      'alias': 'ovo',
      'accNum' : '0813821883442',
      'accType': 'TabunganKu'
    },
    {
      'alias': 'test',
      'accNum' : '2412412',
      'accType': 'TabunganKu'
    },
    {
      'alias': 'sdgsds',
      'accNum' : '90900',
      'accType': 'TabunganKu'
    },
    {
      'alias': 'Joel Geraldine',
      'accNum' : '51239128391',
      'accType': 'TabunganKu'
    },
    {
      'alias': 'tokped test',
      'accNum' : '0813821883442',
      'accType': 'Tabungan Simas Payroll'
    },
    {
      'alias': 'jo test',
      'accNum' : '124125',
      'accType': 'TabunganKu'
    },
    {
      'alias': 'bank',
      'accNum' : '12412511',
      'accType': 'TabunganKu'
    },
  ];

  void runSearch(String searchText) {
    searchResults.clear();
    if(isSearching) {
      for(int i = 0;i < transferList.length; i++) {
        String alias = transferList[i]['alias'];
        String num = transferList[i]['accNum'];
        if(alias.toLowerCase().contains(searchText.toLowerCase()) ||
        num.toLowerCase().contains(searchText.toLowerCase())){
          searchResults.add(transferList[i]);
        }
      }
      print(searchText);
      print(searchResults);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Transfer To', style: TextStyle(color: Colors.white, fontSize: 18)),
          backgroundColor: Color(0xffFA3F70),
          elevation: 0,
          centerTitle: true,
          leading: const BackButton(
            color: Colors.white, // <-- SEE HERE
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
                              borderRadius: BorderRadius.circular(40),
                            ),
                      labelText: 'Account Name / Account Number',
                      suffixIcon: Icon(Icons.search, color: Colors.black, size: 30,),
                    ),
                    onChanged: runSearch,
                  ),
              ),

              transferList.length != 0 ?
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
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
                  itemCount: transferList.length,
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
                                  child: favList(items, transferList));
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
        transferList.removeWhere((element) => element == searchResults[index]);
        searchResults.removeAt(index);
      });
    }else{
      setState(() {
        transferList.removeAt(index);
      });
    }
  }

  Widget favList(items, List transferList) => ListTile(
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
                      transferList[items]['alias'],
                      style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      transferList[items]['accNum'],
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Text(
                        transferList[items]['accType'],
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
}


