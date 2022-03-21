import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Question_Page/dbConnect.dart';
import 'package:project_app/Question_Page/widgets/tab_View.dart';

import '../Result_Pie.dart';

class QuestionOverviews extends StatefulWidget {
  QuestionOverviews({this.flagList, this.ansList, this.ansScore, this.markSub});
  List? flagList;
  List? ansList;
  List? ansScore;
  var markSub;
  @override
  _QuestionOverviewsState createState() => _QuestionOverviewsState(
      flag: flagList, ans: ansList, ansScore: ansScore, markSub: markSub);
}

class _QuestionOverviewsState extends State<QuestionOverviews> {
  _QuestionOverviewsState({this.flag, this.ans, this.ansScore, this.markSub});
  var flag;
  var ans;
  var ansScore;
  var markSub;

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
              marksub: markSub,
              ans: ansScore,
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    print(markSub);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultFinal(
                          ansList: ansScore,
                          markSub: markSub,
                        ),
                      ),
                    );
                  },
                  child: Text("Submit my test")),
            )
          ],
        ),
      )),
    );
  }
}
