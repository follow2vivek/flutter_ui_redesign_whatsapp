import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:whatsapp_redesign/models/chat_status_model.dart';
import 'package:whatsapp_redesign/models/models.dart';
import 'package:whatsapp_redesign/widgets/widgets.dart';

class ChatController extends GetxController {
  var chatList = [
    ChatListModel(
      widget: OnlineOfflineWidget(isOnline: true),
      msg: 'Hey, are you free for tommorow party?',
      name: 'Nitu Desai',
      readStatus: true,
      time: '03:10 PM',
    ),
    ChatListModel(
      widget: OnlineOfflineWidget(isOnline: true),
      msg: 'Hey, are you free for tommorow party?',
      name: 'John Kent',
      readStatus: true,
      time: '03:10 PM',
    ),
    ChatListModel(
      widget: OnlineOfflineWidget(isOnline: false),
      msg: 'Hey, are you free for tommorow party?',
      name: 'Ashok Rane',
      readStatus: true,
      time: '03:10 PM',
    ),
    ChatListModel(
      widget: OnlineOfflineWidget(isOnline: true),
      msg: 'Hey, are you free for tommorow party?',
      name: 'Komal Kamdar',
      readStatus: false,
      time: '03:10 PM',
    ),
    ChatListModel(
      widget: OnlineOfflineWidget(isOnline: false),
      msg: 'Hey, are you free for tommorow party?',
      name: 'Adi Jaiswal',
      readStatus: false,
      time: '03:10 PM',
    ),
    ChatListModel(
      widget: OnlineOfflineWidget(isOnline: false),
      msg: 'Hey, are you free for tommorow party?',
      name: 'Gunja Sharma',
      readStatus: true,
      time: '03:10 PM',
    ),
    ChatListModel(
      widget: OnlineOfflineWidget(isOnline: true),
      msg: 'Hey, are you free for tommorow party?',
      name: 'Yash Sharma',
      readStatus: false,
      time: '03:10 PM',
    ),
    ChatListModel(
      widget: OnlineOfflineWidget(isOnline: true),
      msg: 'Hey, are you free for tommorow party?',
      name: 'Amit Yadav',
      readStatus: true,
      time: '03:10 PM',
    ),
    ChatListModel(
      widget: OnlineOfflineWidget(isOnline: true),
      msg: 'Hey, are you free for tommorow party?',
      name: 'Nilu Sen',
      readStatus: true,
      time: '03:10 PM',
    ),
    ChatListModel(
      widget: OnlineOfflineWidget(isOnline: false),
      msg: 'Hey, are you free for tommorow party?',
      name: 'Neeta Singh',
      readStatus: true,
      time: '03:10 PM',
    ),
  ];

  var chatStatusList = [
    ChatStatusModel(widget: AddStatusWidget(), title: 'Your Status'),
    ChatStatusModel(
        widget: DashedCircle(
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
        title: 'Emanz'),
    ChatStatusModel(widget: OutlineCircleWidget(), title: 'Eccentric'),
    ChatStatusModel(widget: OutlineCircleWidget(), title: 'Symonds'),
    ChatStatusModel(
        widget: DashedCircle(
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
        title: 'Emanz'),
    ChatStatusModel(widget: OutlineCircleWidget(), title: 'Symonds'),
  ];
}
