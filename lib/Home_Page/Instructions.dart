import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Question_Page/question_views.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Instructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(left: 50.0, top: 20.0, right: 50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Test Instructions",
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            SizedBox(
              height: 45,
            ),
            Column(
              children: [
                Text(
                  '''
•   The test will be in MCQ format.    
         
•   You will have 35 questions to solve in 45 
      minutes.    
        
•   You can flag your questions if you are 
     unsure about your answer.

•   You will get a detailed report at the end of 
     the test.

•   Read the questions carefully and give an 
     appropriate answer for the same.           
                ''',
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        (context),
                        MaterialPageRoute(
                            builder: (context) => QuestionViews()));
                  },
                  child: Text("Start my Test"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      elevation: 2.0,
                      minimumSize: Size(273, 47),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      side: BorderSide(color: Colors.black)),
                )
              ],
            ),
            SizedBox(
              height: 33,
            ),
          ],
        ),
      ),
    );
  }
}
