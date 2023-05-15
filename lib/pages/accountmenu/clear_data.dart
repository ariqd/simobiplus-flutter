import 'package:flutter/material.dart';
import '../../main.dart';

class ClearDevice extends StatelessWidget {
  const ClearDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      contentPadding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.28,
        child: Column(
          children: [
            Icon(
              Icons.replay_outlined,
              color: Colors.grey[600],
              size: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Clear SimobiPlus Data',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Roboto')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                  'This will clear SimobiPlus data on your device, are you sure?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      color: Colors.grey[600])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'CANCEL'),
                    child: const Text('CANCEL',
                        style:
                            TextStyle(color: Color(0xffFA3F70), fontSize: 16)),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const MyApp(),
                        ),
                        ModalRoute.withName('/')),
                    child: const Text('YES, CLEAR NOW',
                        style:
                            TextStyle(color: Color(0xffFA3F70), fontSize: 16)),
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
