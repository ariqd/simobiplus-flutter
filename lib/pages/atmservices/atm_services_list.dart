import 'package:flutter/material.dart';
import 'package:simobiplus/styling/paddinghorizontal.dart';
import 'package:simobiplus/styling/paddingvertical.dart';

class ATMServicesList extends StatelessWidget {
  final String menuTitle;
  final String menuTxt;
  final String menuIcon;

  const ATMServicesList({
    Key? key,
    required this.menuTitle,
    this.menuTxt = '',
    this.menuIcon = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width - 40,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                paddingvertical(size: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    paddinghorizontal(size: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset(
                            menuIcon,
                            height: 100,
                            width: 100,
                          ),
                        ),
                        paddinghorizontal(size: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              //width: 100,
                              width: MediaQuery.of(context).size.width -
                                  180, //this is the total width of your screen
                              child: Text(
                                menuTitle,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                            paddingvertical(size: 5),
                            SizedBox(
                              //width: 100,
                              width: MediaQuery.of(context).size.width -
                                  180, //this is the total width of your screen
                              child: Text(
                                menuTxt,
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    fontFamily: 'Roboto-Light'),
                                // overflow: TextOverflow.ellipsis,
                                // softWrap: false,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                paddingvertical(size: 25),
              ],
            )));
  }
}
