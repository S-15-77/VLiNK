import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:project_app/Question_Page/dbConnect.dart';
import 'package:project_app/Question_Page/question_model.dart';
import 'package:project_app/Question_Page/widgets/pieChart.dart';

class ResultFinal extends StatefulWidget {
  ResultFinal({this.ansList, required this.markSub});
  var ansList;
  var markSub;

  @override
  _ResultFinalState createState() =>
      _ResultFinalState(ansList: ansList, markSub: markSub);
}

class _ResultFinalState extends State<ResultFinal> {
  _ResultFinalState({this.ansList, required this.markSub});
  List? ansList;
  var markSub;
  var current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Congratulation XYZ!",
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 3, left: 20, right: 26),
              child: Text(
                'You have successfully cleared the VLink test and now you are industry-ready!',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 344,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, page) {
                      setState(() {
                        current = index;
                      });
                    }),
                items: ['Score', 'Score Break-up', 'Score Break-up'].map((i) {
                  return Builder(builder: (BuildContext context) {
                    print("Builder");
                    print(markSub);
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Color(0xFFF6F6F6)),
                        child: current == 0
                            ? Score(ansList: ansList)
                            : PieChart1(
                                titles: i,
                                markSub: markSub,
                              ));
                  });
                }).toList(),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Your strong areas highlighted from VLink Test:",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "1. Aptitude Reasoning",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "2. Image based recognition",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        print(ansList);
                        print(markSub);
                        print(FirebaseAuth.instance.currentUser?.uid);
                      },
                      child: Text("Get Detailed Report"),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.black),
                        onPrimary: Colors.black,
                        primary: Colors.white,
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text("Get Detailed Report"),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.black),
                        onPrimary: Colors.white,
                        primary: Colors.black,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Score extends StatefulWidget {
  Score({required this.ansList});
  var ansList;

  @override
  _ScoreState createState() => _ScoreState(ansList: ansList);
}

class _ScoreState extends State<Score> {
  _ScoreState({required this.ansList});
  List? ansList;
  totMarks() {
    int count = 0;
    print(ansList);
    for (int i = 0; i < ansList!.length; i++) {
      if (ansList![i] == 1) {
        count++;
        print(count);
      }
    }
    return count * 100;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Your Score",
          style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        SizedBox(
          height: 11,
        ),
        Text(
          "${totMarks()}/300",
          style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 43),
        ),
        SizedBox(
          height: 53,
        ),
        Text(
          "Test Details",
          style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        SizedBox(
          height: 12,
        ),
        // Text(
        //   "Time Taken: 20 minutes",
        //   style: GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 18),
        // ),
        Text(
          "Date: ${DateFormat("yyyy-MM-dd").format(DateTime.now())}",
          style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.w400),
        )
      ],
    ));
  }
}
