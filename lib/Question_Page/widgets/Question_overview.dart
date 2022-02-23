import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Question_Page/dbConnect.dart';
import 'package:project_app/Question_Page/widgets/tab_View.dart';

import '../Result_Pie.dart';

class QuestionOverview extends StatefulWidget {
  QuestionOverview({this.flagList, this.ansList, this.ansScore});
  List? flagList;
  List? ansList;
  List? ansScore;
  @override
  _QuestionOverviewState createState() =>
      _QuestionOverviewState(flag: flagList, ans: ansList, ansScore: ansScore);
}

class _QuestionOverviewState extends State<QuestionOverview> {
  _QuestionOverviewState({this.flag, this.ans, this.ansScore});
  var flag;
  var ans;
  var ansScore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 23),
                  child: Text(
                    "You’ve reached the end!",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23, top: 3),
              child: Text(
                "Please check for unanswered or flagged questions to score the maximum.",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Expanded(
                child: TabView(
              flagged: flag,
              answered: ans,
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultFinal(
                                  ansList: ansScore,
                                )));
                  },
                  child: Text("Submit my test")),
            )
          ],
        ),
      )),
    );
  }
}
