import 'package:flutter/material.dart';

class DetailsDialog extends StatelessWidget {
  const DetailsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentTextStyle: TextStyle(
          fontSize: 13, color: Colors.grey, fontWeight: FontWeight.bold),
      title: const Text(
        'Name',
        style: TextStyle(color: Colors.red),
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(mainAxisSize: MainAxisSize.min, children: [
            const Text(''),
            Center(child: const Text('small Amount')),
            Center(child: const Text('large amount')),
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Container(child: const Text('Oligos')),
            Container(
              child: Icon(
                Icons.check,
                color: Colors.green,
              ),
            ),
            Container(
              child: Icon(
                Icons.clear,
                color: Colors.red,
              ),
            ),
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Container(child: const Text('Fructose')),
            Container(
              child: Icon(Icons.check),
            ),
            Container(
              child: Icon(Icons.check),
            ),
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Container(child: const Text('Polyols')),
            Container(
              child: Icon(Icons.check),
            ),
            Container(
              child: Icon(Icons.check),
            ),
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Container(child: const Text('Lactose')),
            Container(
              child: Icon(Icons.check),
            ),
            Container(
              child: Icon(Icons.check),
            ),
          ]),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
