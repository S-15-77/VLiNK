import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intl/intl.dart';
import 'package:project_app/AfterInformationInput/DetailsPage.dart';
import 'package:project_app/InformationInput/academis.dart';
import 'package:project_app/InformationInput/confirm.dart';
import 'package:project_app/InformationInput/personal.dart';
import 'package:project_app/InformationInput/provider.dart';
import 'package:provider/provider.dart';
import 'socialWidget.dart';

class GlobalData {
  TextEditingController dob = TextEditingController();
  TextEditingController profile = TextEditingController();
  TextEditingController bio = TextEditingController();
}

class StepperProfile extends StatefulWidget {
  @override
  _StepperProfileState createState() => _StepperProfileState();
}

class _StepperProfileState extends State<StepperProfile> {
  var currentStep = 0;
  DateTime _dateTime = DateTime(2000);
  String? bioString;
  String? dOB;

  List<Step> getSteps() => [
        Step(
          isActive: currentStep >= 0,
          title: Text("Personal"),
          content: PersonalWidget(),
        ),
        Step(
            isActive: currentStep >= 1,
            title: Text("Academics"),
            content: AcademicsWidget()),
        Step(
            isActive: currentStep >= 2,
            title: Text("Socials"),
            content: SocialWidget()),
        Step(
            isActive: currentStep >= 3,
            title: Text("Confirm"),
            content: ConfirmWidget()),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Setting up the profile",
                style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
              Text(
                'Some more information to help achieve your goals',
                style: GoogleFonts.nunito(color: Colors.black, fontSize: 14),
              )
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Theme(
          data: ThemeData(
              colorScheme: ColorScheme.light(primary: Colors.black),
              canvasColor: Colors.transparent,
              shadowColor: Colors.transparent),
          child: Stepper(
            type: StepperType.horizontal,
            steps: getSteps(),
            currentStep: currentStep,
            onStepContinue: () {
              final isLastStep = currentStep == getSteps().length - 1;
              if (isLastStep) {
                print("complete");
                var user = FirebaseAuth.instance.currentUser;
                CollectionReference<Map<String, dynamic>> ref =
                    FirebaseFirestore.instance
                        .collection("Users")
                        .doc(user!.uid)
                        .collection("details");
                ref.add({
                  "Name": Provider.of<addValues>(context, listen: false).name,
                  "PhoneNO":
                      Provider.of<addValues>(context, listen: false).phone,
                  "email": Provider.of<addValues>(context, listen: false).email,
                  "Bio":
                      Provider.of<addValues>(context, listen: false).bioValue,
                  "DOB": Provider.of<addValues>(context, listen: false).dob,
                  "bachelorDegree":
                      Provider.of<addValues>(context, listen: false)
                          .bachelorDegree,
                  "bachelorSpl": Provider.of<addValues>(context, listen: false)
                      .bachelorSpl,
                  "bachelorCollege":
                      Provider.of<addValues>(context, listen: false)
                          .bachelorCollege,
                  "bachelorYrs": Provider.of<addValues>(context, listen: false)
                      .bachelorYrs,
                  "bachelor${Provider.of<addValues>(context, listen: false).bachelorGrading}":
                      Provider.of<addValues>(context, listen: false)
                          .bachelorMark,
                  "sclDegree":
                      Provider.of<addValues>(context, listen: false).sclDegree,
                  "sclSpl":
                      Provider.of<addValues>(context, listen: false).sclSpl,
                  "sclCollege":
                      Provider.of<addValues>(context, listen: false).sclCollege,
                  "sclYrs":
                      Provider.of<addValues>(context, listen: false).sclYrs,
                  "scl${Provider.of<addValues>(context, listen: false).sclGrading}":
                      Provider.of<addValues>(context, listen: false).sclMark,
                  "LinkedIn":
                      Provider.of<addValues>(context, listen: false).linkedIN,
                  "Github":
                      Provider.of<addValues>(context, listen: false).github,
                  "Website":
                      Provider.of<addValues>(context, listen: false).website,
                });
                Navigator.push(
                  (context),
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(),
                  ),
                );
              } else {
                //print('BIOVALUE: ${context.watch<addValues>().bioValue}');
                //print("${addValues().bioValue}");
                setState(() {
                  currentStep = currentStep + 1;
                });
              }
            },
            onStepCancel: currentStep == 0
                ? null
                : () => setState(() {
                      currentStep = currentStep - 1;
                    }),
            controlsBuilder: (context, {onStepContinue, onStepCancel}) {
              final isLastStep = currentStep == getSteps().length - 1;
              return Container(
                child: Row(
                  children: [
                    if (currentStep != 0)
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: Text('Back'),
                          onPressed: onStepCancel,
                        ),
                      ),
                    if (currentStep != 0)
                      SizedBox(
                        width: 12,
                      ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Text(isLastStep ? 'Create My Profile' : 'Next'),
                        onPressed: onStepContinue,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
