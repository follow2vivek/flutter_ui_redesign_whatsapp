import 'dart:math';

import 'package:flutter/material.dart';

class OnlineOfflineWidget extends StatelessWidget {
  final isOnline;
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

  OnlineOfflineWidget({@required this.isOnline});
  @override
  Widget build(BuildContext context) {
    rnd = new Random();
    return Stack(
      overflow: Overflow.visible,
      fit: StackFit.loose,
      children: <Widget>[
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(_imageData[min + rnd.nextInt(max - min)]),
            fit: BoxFit.cover
            ),
            shape: BoxShape.circle,

          ),
        ),
        Positioned(
          bottom: -5,
          left: 35,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffffffff),
                width: 1,
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isOnline ? Color(0xff06A88E) : Color(0xffC0C0C0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
