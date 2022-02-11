import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionOverview extends StatefulWidget {
  const QuestionOverview({Key? key}) : super(key: key);

  @override
  _QuestionOverviewState createState() => _QuestionOverviewState();
}

class _QuestionOverviewState extends State<QuestionOverview>
    with TickerProviderStateMixin {
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
          ],
        ),
      )),
    );
  }
}
