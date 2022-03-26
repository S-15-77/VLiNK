import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/InformationInput/provider.dart';
import 'package:provider/provider.dart';

class AcademicsWidget extends StatefulWidget {
  @override
  _AcademicsWidgetState createState() => _AcademicsWidgetState();
}

class _AcademicsWidgetState extends State<AcademicsWidget> {
  final _formKey = GlobalKey<FormState>();

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
      child: Form(
        key: _formKey,
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
                dropdownColor: Colors.white,
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
                    if (value != null) {
                      currentItem = value;
                      Provider.of<addValues>(context, listen: false)
                          .addBachelorDegree(currentItem);
                    }
                  }),
                  print(currentItem),
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Specialization',
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            Container(
              width: double.infinity,
              child: DropdownButtonFormField(
                dropdownColor: Colors.white,
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
                    if (valueSpl != null) {
                      currentSpl = valueSpl;
                      Provider.of<addValues>(context, listen: false)
                          .addBachelorSpl(currentSpl);
                    }
                  })
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'College/University',
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            TextFormField(
              onChanged: (val) {
                Provider.of<addValues>(context, listen: false)
                    .addBachelorCollege(val);
              },
              decoration: InputDecoration(
                hintText: "Some details about you",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
              maxLines: 1,
              controller: coll,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Graduation Year',
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            Container(
              width: double.infinity,
              child: DropdownButtonFormField(
                dropdownColor: Colors.white,
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
                    if (valueGyrs != null) {
                      currentGYrs = valueGyrs;
                      Provider.of<addValues>(context, listen: false)
                          .addBachelorYrs(currentGYrs);
                    }
                  })
                },
              ),
            ),
            SizedBox(
              height: 20,
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
                        dropdownColor: Colors.white,
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
                            if (value != null) {
                              currentCGPA = value;
                              Provider.of<addValues>(context, listen: false)
                                  .addBachelorGrading(currentCGPA);
                            }
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
                      child: TextFormField(
                        onChanged: (val) {
                          Provider.of<addValues>(context, listen: false)
                              .addBachelorMark(val);
                        },
                        decoration: InputDecoration(
                          hintText: currentCGPA == "CGPA"
                              ? "Out of 10"
                              : "Percentage",
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
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
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
                dropdownColor: Colors.white,
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
                    if (value != null) {
                      dipItem = value;
                      Provider.of<addValues>(context, listen: false)
                          .add12Degree(dipItem);
                    }
                  })
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Specialization',
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            Container(
              width: double.infinity,
              child: DropdownButtonFormField(
                dropdownColor: Colors.white,
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
                    if (valueSpl != null) {
                      dipSpl = valueSpl;
                      Provider.of<addValues>(context, listen: false)
                          .add12Spl(dipSpl);
                    }
                  })
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'College/University',
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 16),
            ),
            TextFormField(
              onChanged: (val) {
                Provider.of<addValues>(context, listen: false)
                    .add12College(val);
              },
              decoration: InputDecoration(
                hintText: "Some details about you",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
              ),
              maxLines: 1,
              controller: dip,
            ),
            SizedBox(
              height: 20,
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
                    hintText: "Graduation Year",
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
                    if (valueGyrs != null) {
                      dipGYrs = valueGyrs;
                      Provider.of<addValues>(context, listen: false)
                          .add12Yrs(dipGYrs);
                    }
                  })
                },
              ),
            ),
            SizedBox(
              height: 20,
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
                        dropdownColor: Colors.white,
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
                            if (value != null) {
                              dipCGPA = value;
                              Provider.of<addValues>(context, listen: false)
                                  .add12Grading(dipCGPA);
                            }
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
                      child: TextFormField(
                        onChanged: (val) {
                          Provider.of<addValues>(context, listen: false)
                              .add12Mark(val);
                        },
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
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
