import 'package:flutter/material.dart';

class ChatListModel {
  Widget widget;
  String name;
  String msg;
  String time;
  bool readStatus;
  ChatListModel({this.msg, this.name, this.readStatus, this.time, this.widget});
}
