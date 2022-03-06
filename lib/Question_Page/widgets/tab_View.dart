import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Question_Page/dbConnect.dart';
import 'package:project_app/Question_Page/question_views.dart';

import '../question_model.dart';
import '../question_views_2.dart';

class TabView extends StatefulWidget {
  TabView(
      {required this.flagged,
      required this.answered,
      required this.ans,
      required this.marksub});
  final List flagged;
  final List answered;
  final ans;
  final marksub;

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  var db = DBConnect();

  Future<List<Questions>>? questions;

  Future<List<Questions>> getData() async {
    return questions = db.fetchQuestions();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: questions,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            var extractedData = snapshot.data as List<Questions>;
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
                          "Flagged ${widget.flagged.length}",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Answered ${widget.answered.length}",
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
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            for (int i = 0; i < widget.flagged.length; i++)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 102,
                                  width: 327,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF6F6F6),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Question - ${widget.flagged[i] + 1}",
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            '${extractedData[widget.flagged[i]].mainTitle}',
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${extractedData[widget.flagged[i]].title}",
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    side: BorderSide(
                                                        color: Colors.black),
                                                    onPrimary: Colors.black,
                                                    primary: Colors.white,
                                                    shape: CircleBorder()),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              QuestionViews2(
                                                                ans: widget.ans,
                                                                ansQns: widget
                                                                    .answered,
                                                                flaggedQns:
                                                                    widget
                                                                        .flagged,
                                                                markSub: widget
                                                                    .marksub,
                                                                ansQnsIndex: widget
                                                                    .flagged[i],
                                                              )));
                                                },
                                                child:
                                                    Icon(Icons.arrow_forward)),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            for (int i = 0; i < widget.answered.length; i++)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 102,
                                  width: 327,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF6F6F6),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Question - ${widget.answered[i] + 1}            ",
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            '${extractedData[widget.answered[i]].mainTitle}',
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 14,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${extractedData[widget.answered[i]].title}",
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    side: BorderSide(
                                                        color: Colors.black),
                                                    onPrimary: Colors.black,
                                                    primary: Colors.white,
                                                    shape: CircleBorder()),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              QuestionViews2(
                                                                ans: widget.ans,
                                                                ansQns: widget
                                                                    .answered,
                                                                flaggedQns:
                                                                    widget
                                                                        .flagged,
                                                                markSub: widget
                                                                    .marksub,
                                                                ansQnsIndex: widget
                                                                    .answered[i],
                                                              )));
                                                },
                                                child:
                                                    Icon(Icons.arrow_forward)),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
          } else {
            return CircularProgressIndicator();
          }
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
