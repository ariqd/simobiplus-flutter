import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SummaryPortofolioCard extends StatefulWidget {
  final ImageProvider<Object> backgroundImage;
  final Widget child;

  const SummaryPortofolioCard(
      {super.key, required this.backgroundImage, required this.child});

  @override
  State<SummaryPortofolioCard> createState() => _SummaryPortofolioCardState();
}

class _SummaryPortofolioCardState extends State<SummaryPortofolioCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: widget.backgroundImage,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: DefaultTextStyle(
            style: const TextStyle(color: Colors.white),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
