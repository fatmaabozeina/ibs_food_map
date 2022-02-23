import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel getPageViewModel(String image, String title, String body) {
  return PageViewModel(
    image: Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: 130,
          backgroundColor: Color(0xFFD1EAA3),
        ),
        Container(
          child: Image(
            height: 160,
            width: 160,
            image: AssetImage(image),
          ),
        ),
      ],
    ),
    decoration: PageDecoration(
      titleTextStyle: TextStyle(
          color: Color(0xFF8B9A46), fontWeight: FontWeight.bold, fontSize: 20),
      bodyTextStyle: TextStyle(color: Color(0xFF184D47), fontSize: 15),
      imageFlex: 2,
      imageAlignment: Alignment.center,
      bodyFlex: 1,
    ),
    title: title,
    body: body,
  );
}

class PageViewModelInputData {
  late String title;
  late String body;
  late String imagePath;
  PageViewModelInputData(
      {required this.title, required this.body, required this.imagePath});
}
