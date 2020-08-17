import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:whatsapp_redesign/controllers/call_controller.dart';

class CallTab extends StatelessWidget {
  final _callController  = CallController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            _callWidget(isMissedCall: true, isPhoneCall: false),
            SizedBox(height: 16,),
            _callWidget(isMissedCall: false, isPhoneCall: true),
            SizedBox(height: 16,),
            _callWidget(isMissedCall: true, isPhoneCall: false),
            SizedBox(height: 16,),
            _callWidget(isMissedCall: false, isPhoneCall: false),
            SizedBox(height: 16,),
            _callWidget(isMissedCall: true, isPhoneCall: true),
          ],
        ),
      ),
    );
  }

  Widget _callWidget({bool isMissedCall, bool isPhoneCall}) {
    
    return Row(
      children: <Widget>[
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                _callController.getNextImg(),
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Vivek',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff222222)),
            ),
            Row(
              children: <Widget>[
                Icon(
                  isMissedCall ? MdiIcons.callMissed : MdiIcons.callReceived,
                  color: Color(isMissedCall ? 0xffFF3824 : 0xff06A88E),
                  size: 18,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  MdiIcons.clock,
                  color: Color(0xffC0C0C0),
                  size: 14,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Today 03:35',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xffC0C0C0),
                  ),
                ),
              ],
            )
          ],
        ),
        Expanded(child: SizedBox()),
        Icon(isPhoneCall ? MdiIcons.phone : MdiIcons.video,color: Color(0xff06A88E),size: 28,)
      ],
    );
  }
}
