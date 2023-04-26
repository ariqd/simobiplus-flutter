import 'package:flutter/material.dart';

class greyLineFull extends StatelessWidget {
  final int minus;
  final double thickness;

  const greyLineFull({
    Key? key,
    this.minus = 0,
    this.thickness = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: thickness,
      width: MediaQuery.of(context).size.width - minus,
      child: const DecoratedBox(
        decoration: const BoxDecoration(color: Color(0xffECECEC)),
      ),
    );
  }
}
