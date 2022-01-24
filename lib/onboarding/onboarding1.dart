import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/onboarding/onboarding2.dart';
import 'package:project_app/onboarding/onboarding3.dart';

class OnBoarding1 extends StatefulWidget {
  @override
  _OnBoarding1State createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'What\'s VLiNK',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 119,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assests/images/onboarding1.png',
                    width: 147,
                    height: 155,
                  ),
                ],
              ),
              SizedBox(
                height: 31,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\"A company is all about the people in it. \" ",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w900, fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ''' We help companies by providing Skilled 
                      People in '0' Capital Expenditure thereby also 
                      helping them get rid of Liabilities and nurture 
                      Assets''',
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ''' We enable Freshers to achieve higher pay 
                            packages thereby being a catalyst 
                            in upbringing of educational institutes.''',
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 57,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
              SizedBox(
                height: 5,
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
                                builder: (context) => Onboarding2()));
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
