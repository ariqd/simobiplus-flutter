import 'package:flutter/material.dart';
import 'package:simobiplus/bottombar.dart';
import 'package:simobiplus/packages/simas_icons.dart';
import 'package:simobiplus/pages/easypin/easypin.dart';
import 'package:simobiplus/pages/summary_portofolio/summary_portofolio.dart';

class BoxSummaryPortfolio extends StatelessWidget {
  const BoxSummaryPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Container(
      // alignment: Alignment.center,
      width: screen.width * 0.31,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Easypin(
                continueTo: SummaryPortofolio(),
              ),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Icon(
              Simas.new_card,
              color: Colors.red,
              size: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Summary Portofolio',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
