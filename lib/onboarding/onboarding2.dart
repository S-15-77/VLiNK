import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project_app/onboarding/onboarding3.dart';

class Onboarding2 extends StatefulWidget {
  @override
  _Onboarding2State createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assests/images/logo.png',
                    height: 74.0,
                    width: 74.0,
                  ),
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do we hold any records?',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 43,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assests/images/onboarding2.png',
                    height: 196,
                    width: 327.42,
                  )
                ],
              ),
              SizedBox(
                height: 70.0,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('''2000 + Candidates from various educational
                     institutes became industry-ready.'''),
                      Text('''200 + Freshers grabbed higher pay 
                      packages from reputed companies. '''),
                      Text('''10+ Companies spent zero capital on 
                      training their workforce for industry.''')
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: null,
                    backgroundColor: Colors.grey,
                    radius: 8,
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  CircleAvatar(
                    child: null,
                    backgroundColor: Colors.black,
                    radius: 10,
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  CircleAvatar(
                    child: null,
                    backgroundColor: Colors.grey,
                    radius: 8,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: ElevatedButton(
                      child: Text(
                        "Skip",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                                builder: (context) => Onboarding3()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          elevation: 2.0,
                          minimumSize: Size(146, 47),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          side: BorderSide(color: Colors.black)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 24),
                    child: ElevatedButton(
                      child: Text(
                        "Next",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.push(
                            (context),
                            MaterialPageRoute(
                                builder: (context) => Onboarding3()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        elevation: 2.0,
                        minimumSize: Size(146, 47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
