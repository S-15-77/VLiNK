import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Question_Page/question_views.dart';

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            indicatorWeight: 3.0,
            indicatorColor: Color(0xFFFFCD4C),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                child: Text(
                  "Flagged 3",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Answered 3",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black),
                ),
              )
            ],
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Flagged"),
              ),
              Center(
                child: Text("Answered"),
              ),
            ],
          ),
        ));
  }
}
