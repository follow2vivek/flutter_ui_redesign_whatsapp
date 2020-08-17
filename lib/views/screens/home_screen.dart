import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:whatsapp_redesign/views/views.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff06A88E),
          child: Icon(
            MdiIcons.messageTextOutline,
            color: Colors.white,
            size: 28,
          ),
          onPressed: () {},
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  'https://avatars0.githubusercontent.com/u/24294081?s=400&u=e84fb2dbff5f78712dbc60c011c0ddb3947b5aee&v=4',
                ),
              ),
            ),
          ),
          title: Text(
            'Vivek Sharma',
            style: GoogleFonts.poppins(
              color: Color(0xff242424),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: false,
          actions: <Widget>[
            Icon(
              MdiIcons.magnify,
              color: Color(0xff06A88E),
            ),
            SizedBox(width: 16),
            Icon(
              MdiIcons.dotsHorizontalCircle,
              color: Color(0xff06A88E),
            ),
            SizedBox(width: 16),
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Color(0xffB8BBBF),
            labelStyle: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            tabs: [
              Tab(
                child: Text('Chat'),
              ),
              Tab(
                child: Text('Groups'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
            indicatorColor: Color(0xff06A88E),
            labelColor: Color(0xff06A88E),
          ),
        ),
        body: TabBarView(

          children: [
            ChatTab(),
            GroupTab(),
            StatusTab(),
            CallTab(),
          ],
        ),
      ),
    );
  }
}
