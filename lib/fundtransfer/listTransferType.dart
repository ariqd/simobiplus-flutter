import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ListTransferType extends StatelessWidget {
  final String iconImagePath;
  final String typeTitle;
  final String subName;
  final Function() onPressed;

  const ListTransferType(
      {Key? key,
      required this.iconImagePath,
      required this.typeTitle,
      required this.subName,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(width: 1.0),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // icon
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      child: Image.asset(iconImagePath),
                    ),
                    // text
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              typeTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                  color: HexColor('#2F476D')),
                            ),
                            SizedBox(height: 8),
                            Text(
                              subName,
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: HexColor('#2F476D'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
