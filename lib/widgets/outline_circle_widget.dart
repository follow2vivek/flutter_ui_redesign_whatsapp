import 'dart:math';

import 'package:flutter/material.dart';

class OutlineCircleWidget extends StatelessWidget {
  final _imageData = [
    'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?size=626&ext=jpg&ga=GA1.2.1441322706.1597667093',
    'https://img.freepik.com/free-photo/bugged-eyed-dark-skinned-male-looks-with-frustrated-surprised-expression-keeps-fingers-temples-tries-recall-right-answer-isolated-pink-studio_273609-3759.jpg?size=626&ext=jpg&ga=GA1.2.1441322706.1597667093',
    'https://img.freepik.com/free-photo/horizontal-shot-pleased-attractive-young-female-model-with-curly-dark-hair-pleasant-smile-face_273609-3208.jpg?size=626&ext=jpg&ga=GA1.2.1441322706.1597667093',
    'https://img.freepik.com/free-photo/silly-funny-bald-man-showing-horns-up-head_176420-18427.jpg?size=626&ext=jpg&ga=GA1.2.1441322706.1597667093',
    'https://img.freepik.com/free-photo/pondering-concerned-man-thinking-scratch-back-head-indecisive_176420-19623.jpg?size=626&ext=jpg&ga=GA1.2.1441322706.1597667093',
    'https://avatars0.githubusercontent.com/u/24294081?s=400&u=e84fb2dbff5f78712dbc60c011c0ddb3947b5aee&v=4'
  ];
  Random rnd;
  int min = 0;
  int max = 5;
  @override
  Widget build(BuildContext context) {
    rnd = new Random();
    return Container(
      width: 80,
      height: 80,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xff06A88E),
          width: 2,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                _imageData[min + rnd.nextInt(max - min)],
              ),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
