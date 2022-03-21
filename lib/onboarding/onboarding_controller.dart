import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project_app/onboarding/onboarding_info.dart';
import 'package:get/state_manager.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  List<OnboardingReq> onboardingPages = [
    OnboardingReq(
        title: 'What\'s Vlink?',
        titleStyle:
            GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
        images: 'assests/images/NewOnboarding1.png',
        imageheight: 232.0,
        imagewidth: 184.0,
        subTitle: '\"A company is all about the people in it.\"',
        subTitleStyle:
            GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 14),
        body: ''' 
    
    We help companies by providing Skilled People in '0' Capital Expenditure thereby also helping them get rid of Liabilities and nurture Assets. We enable Freshers to achieve higher pay packages thereby being a catalyst in upbringing of educational institutes.
    
    '''),
    OnboardingReq(
        title: 'Do we hold any records?',
        titleStyle:
            GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
        images: 'assests/images/onboarding2.png',
        imageheight: 196.0,
        imagewidth: 327.42,
        subTitle: ' ',
        body: ''' 
•    2000 + Candidates from various educational institutes became industry-ready. \n
•    200 + Freshers grabbed higher pay packages from reputed companies. \n
•    10+ Companies spent zero capital on training their workforce for industry.
    ''',
        bodystyle:
            GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 14)),
    OnboardingReq(
        title: ''' So, What’s stopping you from achieving
                   that desired package?''',

        //'So, What’s stopping you from achieving that desired package?',
        titleStyle: GoogleFonts.nunito(
          fontWeight: FontWeight.w700,
          fontSize: 19,
        ),
        images: 'assests/images/OnboardingNew3.png',
        subTitle: 'Get yourself registered today!',
        subTitleStyle:
            GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 22),
        body: ''' 
    
    '''),
  ];
}
