import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intl/intl.dart';

class StepperProfile extends StatefulWidget {
  @override
  _StepperProfileState createState() => _StepperProfileState();
}

class _StepperProfileState extends State<StepperProfile> {
  var currentStep = 0;
  DateTime _dateTime = DateTime(2000);

  List<Step> getSteps() => [
        Step(
            isActive: currentStep >= 0,
            title: Text("Personal"),
            content: PersonalWidget()),
        Step(
            isActive: currentStep >= 1,
            title: Text("Academics"),
            content: AcademicsWidget()),
        Step(
            isActive: currentStep >= 2,
            title: Text("Socials"),
            content: Container()),
        Step(
            isActive: currentStep >= 3,
            title: Text("Confirm"),
            content: Container()),
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
              canvasColor: Colors.transparent, shadowColor: Colors.transparent),
          child: Stepper(
            type: StepperType.horizontal,
            steps: getSteps(),
            currentStep: currentStep,
            onStepContinue: () {
              final isLastStep = currentStep == getSteps().length - 1;
              if (isLastStep) {
                print("complete");
              } else {
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
          ),
        ),
      ),
    );
  }
}

class AcademicsWidget extends StatefulWidget {
  @override
  _AcademicsWidgetState createState() => _AcademicsWidgetState();
}

class _AcademicsWidgetState extends State<AcademicsWidget> {
  TextEditingController coll = TextEditingController();
  TextEditingController gper = TextEditingController();
  TextEditingController dip = TextEditingController();
  TextEditingController dipper = TextEditingController();
  var currentItem;
  var currentSpl;
  var currentGYrs;
  var currentCGPA;

  var dipItem;
  var dipSpl;
  var dipGYrs;
  var dipCGPA;
  List<String> itemsDO = ["None", "B.E", "B.Tech"];
  List<String> itemsSpl = ["None", "AIML", "AIDA"];
  List<String> itemGYrs = ["2020", "2019", "2018"];
  List<String> itemCGPA = ["CGPA", "Percentage"];

  List<String> dipsDO = ["None", "B.E", "B.Tech"];
  List<String> dipsSpl = ["None", "AIML", "AIDA"];
  List<String> dipsGYrs = ["2020", "2019", "2018"];
  List<String> dipsCGPA = ["CGPA", "Percentage"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Bachelor\'s Degree'),
          Text(
            'Degree Obtained',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          Container(
            width: double.infinity,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  hintText: "Degree Obtained",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)))),
              isExpanded: true,
              value: currentItem,
              items: itemsDO
                  .map<DropdownMenuItem<String>>(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (value) => {
                setState(() {
                  if (value != null) currentItem = value;
                })
              },
            ),
          ),
          Text(
            'Specialization',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          Container(
            width: double.infinity,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  hintText: "Specialization",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)))),
              isExpanded: true,
              value: currentSpl,
              items: itemsSpl
                  .map<DropdownMenuItem<String>>(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (valueSpl) => {
                setState(() {
                  if (valueSpl != null) currentSpl = valueSpl;
                })
              },
            ),
          ),
          Text(
            'College/University',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Some details about you",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
            ),
            maxLines: 1,
            controller: coll,
          ),
          Text(
            'Graduation Year',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          Container(
            width: double.infinity,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  hintText: "Specialization",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)))),
              isExpanded: true,
              value: currentGYrs,
              items: itemGYrs
                  .map<DropdownMenuItem<String>>(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (valueGyrs) => {
                setState(() {
                  if (valueGyrs != null) currentGYrs = valueGyrs;
                })
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Grading'),
                  Container(
                    width: 150,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          hintText: "CGPA",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)))),
                      isExpanded: true,
                      value: currentCGPA,
                      items: itemCGPA
                          .map<DropdownMenuItem<String>>(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ),
                          )
                          .toList(),
                      onChanged: (value) => {
                        setState(() {
                          if (value != null) currentCGPA = value;
                        })
                      },
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Score'),
                  Container(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText:
                            currentCGPA == "CGPA" ? "Out of 10" : "Percentage",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                      ),
                      maxLines: 1,
                      controller: gper,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          Text('12th / Diploma'),
          Text(
            'Degree Obtained',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          Container(
            width: double.infinity,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  hintText: "Degree Obtained",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)))),
              isExpanded: true,
              value: dipItem,
              items: dipsDO
                  .map<DropdownMenuItem<String>>(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (value) => {
                setState(() {
                  if (value != null) dipItem = value;
                })
              },
            ),
          ),
          Text(
            'Specialization',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          Container(
            width: double.infinity,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  hintText: "Specialization",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)))),
              isExpanded: true,
              value: dipSpl,
              items: dipsSpl
                  .map<DropdownMenuItem<String>>(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (valueSpl) => {
                setState(() {
                  if (valueSpl != null) dipSpl = valueSpl;
                })
              },
            ),
          ),
          Text(
            'College/University',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Some details about you",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
            ),
            maxLines: 1,
            controller: dip,
          ),
          Text(
            'Graduation Year',
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          Container(
            width: double.infinity,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  hintText: "Specialization",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)))),
              isExpanded: true,
              value: dipGYrs,
              items: dipsGYrs
                  .map<DropdownMenuItem<String>>(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (valueGyrs) => {
                setState(() {
                  if (valueGyrs != null) dipGYrs = valueGyrs;
                })
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Grading'),
                  Container(
                    width: 150,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          hintText: "CGPA",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)))),
                      isExpanded: true,
                      value: dipCGPA,
                      items: dipsCGPA
                          .map<DropdownMenuItem<String>>(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ),
                          )
                          .toList(),
                      onChanged: (value) => {
                        setState(() {
                          if (value != null) dipCGPA = value;
                        })
                      },
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Score'),
                  Container(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText:
                            dipCGPA == "CGPA" ? "Out of 10" : "Percentage",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                      ),
                      maxLines: 1,
                      controller: dipper,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PersonalWidget extends StatefulWidget {
  @override
  _PersonalWidgetState createState() => _PersonalWidgetState();
}

class _PersonalWidgetState extends State<PersonalWidget> {
  @override
  Widget build(BuildContext context) {
    TextEditingController dob = TextEditingController();
    TextEditingController profile = TextEditingController();
    TextEditingController bio = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Profile Photo",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          Text(
            "Date Of Birth",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          TextField(
            // onTap: () async {
            //   var date = await showDatePicker(
            //       context: context,
            //       initialDate: DateTime.now(),
            //       firstDate: DateTime(1900),
            //       lastDate: DateTime(2100));
            //   dob.text = DateFormat("dd-MM-yyyy")
            //       .format(date as DateTime); // date.toString().substring(0, 5);
            // },
            onTap: () {},
            decoration: InputDecoration(
                hintText: "DD-MM-YYYY",
                suffixIcon: IconButton(
                    icon: Icon(Icons.date_range),
                    onPressed: () async {
                      var date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));
                      dob.text =
                          DateFormat("dd-MM-yyyy").format(date as DateTime);
                      print(dob);
                    }),
                border: OutlineInputBorder(),
                fillColor: Colors.grey[300],
                filled: true),
            controller: dob,
          ),
          Text(
            "Bio",
            style:
                GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Some details about you",
                border: OutlineInputBorder(),
                fillColor: Colors.grey[300],
                filled: true),
            maxLines: 5,
            controller: bio,
          ),
        ],
      ),
    );
  }
}
