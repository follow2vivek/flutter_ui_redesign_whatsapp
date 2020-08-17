import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:whatsapp_redesign/controllers/controllers.dart';

class ChatTab extends StatelessWidget {
  final _chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 130,
            margin: EdgeInsets.only(top: 16),
            child: ListView.builder(
              itemCount: _chatController.chatStatusList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (_, index) => Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: <Widget>[
                    _chatController.chatStatusList[index].widget,
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      _chatController.chatStatusList[index].title,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.black.withOpacity(.16),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: _chatController.chatList.length,
              shrinkWrap: true,
              itemBuilder: (_, index) => Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: _chatController.chatList[index].widget,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  _chatController.chatList[index].name,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color(0xff222222)),
                                ),
                                Text(
                                  _chatController.chatList[index].time,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xffC0C0C0)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  _chatController.chatList[index].readStatus
                                      ? MdiIcons.checkAll
                                      : MdiIcons.check,
                                  color: Color(
                                      _chatController.chatList[index].readStatus
                                          ? 0xff06A88E
                                          : 0xffC0C0C0),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    _chatController.chatList[index].msg,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xffC0C0C0),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (BuildContext context, int index) => Container(
                height: 1,
                color: Colors.black.withOpacity(.16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
