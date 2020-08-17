import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:whatsapp_redesign/controllers/status_controller.dart';
import 'package:whatsapp_redesign/widgets/widgets.dart';

class StatusTab extends StatelessWidget {
  final _statusController = StatusController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                AddStatusWidget(),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'My Status',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff222222)),
                    ),
                    Text(
                      'Tap to add status update',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xffC0C0C0)),
                    ),
                  ],
                )
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
              'New Status',
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
          _widgetStatus(),
          SizedBox(
            height: 16,
          ),
          _widgetStatus(),
        ],
      ),
    );
  }

  Widget _widgetStatus() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: <Widget>[
          Row(
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
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Norma Andong',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff222222)),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          MdiIcons.clock,
                          size: 16,
                          color: Color(0xffC0C0C0),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            'Today 11:44',
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xffC0C0C0),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    MdiIcons.eye,
                    size: 16,
                    color: Color(0xffC0C0C0),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '73',
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xffC0C0C0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
          SizedBox(height: 16,),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: _statusController.statusImageList.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => Container(
                margin: EdgeInsets.only(right: 10),
                child: Image.network(
                  _statusController.statusImageList[index],
                  height: 120,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
