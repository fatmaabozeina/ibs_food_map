import 'package:flutter/material.dart';

class HomeGridViewUnit extends StatelessWidget {
  const HomeGridViewUnit({Key? key}) : super(key: key);

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
