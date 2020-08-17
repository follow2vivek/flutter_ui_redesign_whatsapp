import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AddStatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      fit: StackFit.loose,
      children: <Widget>[
        DashedCircle(
          child: Padding(
            padding: EdgeInsets.all(6.0),
            child: CircleAvatar(
              radius: 35.0,
              backgroundImage: NetworkImage(
                  'https://avatars0.githubusercontent.com/u/24294081?s=400&u=e84fb2dbff5f78712dbc60c011c0ddb3947b5aee&v=4'),
            ),
          ),
          color: Color(0xff06A88E),
        ),
        Positioned(
          bottom: -2,
          left: 55,
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff06A88E),
              border: Border.all(
                width: 1,
              color: Color(0xffffffff),
              )
            ),
            child: Icon(
              MdiIcons.plus,
              color: Color(0xffffffff),
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}
