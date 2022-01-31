import 'package:flutter/material.dart';

class MainGridViewCell extends StatelessWidget {
  const MainGridViewCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.red,
          child: Center(child: Text('name')),
        ),
        Text('type')
      ],
    );
  }
}
