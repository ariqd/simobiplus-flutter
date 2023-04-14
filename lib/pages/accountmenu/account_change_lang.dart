import 'package:flutter/material.dart';
import 'package:simobiplus/styling/greyLineFull.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';

class AccountChangeLang extends StatefulWidget {
  const AccountChangeLang({
    super.key,
  });

  @override
  State<AccountChangeLang> createState() => _AccountChangeLangState();
}

class _AccountChangeLangState extends State<AccountChangeLang> {

  final List<dynamic> _lang = [
    {
      'lang': 'Bahasa Indonesia',
      'value' : 0,
      'id' : 'id'
    },
    {
      'lang': 'English',
      'value' : 1,
      'id' : 'en'
    },
  ];

  int selectedLang = 1;
  
  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         // Here we take the value from the MyHomePage object that was created by
  //         // the App.build method, and use it to set our appbar title.
  //         title: Text('Language', style: TextStyle(color: Colors.black)),
  //         backgroundColor: Colors.white,
  //         elevation: 0,
  //         leading: const BackButton(
  //           color: Color(0xffFA3F70), // <-- SEE HERE
  //         ),
  //       ),
  //       body: SizedBox(child: Column(
  //               children: _lang.map((lang) {
  //             return RadioListTile(
  //                 groupValue: selectedLang,
  //                 value: lang['value'],
  //                 title: Text(lang['lang']),
  //                 onChanged: (newValue) {
  //                   setState(() {
  //                     selectedLang = newValue;
  //                   });
  //                 });
  //           }).toList()),)
  //       );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Language', style: TextStyle(color: Colors.black, fontSize: 18)),
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
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: 
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedLang = 0;
                    });
                  },
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bahasa Indonesia', style: TextStyle(color: Colors.grey[600], fontSize: 15)),
                      Icon(
                        Icons.check,
                        color: selectedLang == 0 ? Color(0xffFA3F70) : Colors.white,
                        size: 30,
                      ),  
                    ],
                  ),
                ), 
              ),
              
              greyLineFull(minus: 40),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: 
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedLang = 1;
                    });
                  },
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('English', style: TextStyle(color: Colors.grey[600], fontSize: 15)),
                      Icon(
                        Icons.check,
                        color: selectedLang == 1 ? Color(0xffFA3F70) : Colors.white,
                        size: 30,
                      ),  
                    ],
                  ),
                ), 
              ),

              greyLineFull(minus: 40),
              
            ],
          ),
        )
        );
  }
}
