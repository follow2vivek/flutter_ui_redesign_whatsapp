import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:whatsapp_redesign/controllers/controllers.dart';

class GroupTab extends StatelessWidget {
  final _groupController = GroupController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Create New Group Call',
              style: GoogleFonts.poppins(
                color: Color(0xff06A88E),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Row(
              children: <Widget>[
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff06A88E),
                  ),
                  child: Center(
                    child: Icon(
                      MdiIcons.accountMultiple,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'New Group',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: SizedBox()),
                Icon(
                  MdiIcons.phone,
                  color: Color(0xff06A88E),
                  size: 24,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  MdiIcons.video,
                  color: Color(0xff06A88E),
                  size: 30,
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Colors.black.withOpacity(.16),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Create New Call',
              style: GoogleFonts.poppins(
                color: Color(0xff06A88E),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: _groupController.groupList.length,
              shrinkWrap: true,
              itemBuilder: (_, index) => Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: _groupController.groupList[index].widget,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _groupController.groupList[index].name,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color(0xff222222)),
                            ),
                            Text(
                              _groupController.groupList[index].status,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xffC0C0C0)),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        MdiIcons.phone,
                        color: Color(0xff06A88E),
                        size: 24,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        MdiIcons.video,
                        color: Color(0xff06A88E),
                        size: 30,
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
