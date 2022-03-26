import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/MainHome/Accounts/ApplyBottomModel.dart';
import 'package:project_app/MainHome/Accounts/data.dart';

class ApplyJobs extends StatefulWidget {
  ApplyJobs({this.jobTitle, this.location, this.salary, this.openings});
  var jobTitle;
  var location;
  var salary;
  var openings;

  @override
  _ApplyJobsState createState() => _ApplyJobsState();
}

class _ApplyJobsState extends State<ApplyJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Back to All Profiles',
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.w400, fontSize: 18, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          iconSize: 18.0,
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
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 28),
                  child: Text(
                    '${widget.jobTitle}',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Rs. ${widget.salary}',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFF757575)),
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Open Position',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      height: 101,
                      width: 83,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 12,
                              ),
                              Text(
                                '${widget.location}',
                                style: GoogleFonts.nunito(fontSize: 12),
                              )
                            ],
                          ),
                          Center(
                            child: Text(
                              '${widget.openings}',
                              style: GoogleFonts.nunito(
                                  fontSize: 27, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Text(
                            'Openings',
                            style: GoogleFonts.nunito(
                                fontSize: 10, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      height: 101,
                      width: 83,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 12,
                              ),
                              Text(
                                '${widget.location}',
                                style: GoogleFonts.nunito(fontSize: 12),
                              )
                            ],
                          ),
                          Center(
                            child: Text(
                              '${widget.openings}',
                              style: GoogleFonts.nunito(
                                  fontSize: 27, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Text(
                            'Openings',
                            style: GoogleFonts.nunito(
                                fontSize: 10, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      height: 101,
                      width: 83,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 12,
                              ),
                              Text(
                                '${widget.location}',
                                style: GoogleFonts.nunito(fontSize: 12),
                              )
                            ],
                          ),
                          Center(
                            child: Text(
                              '${widget.openings}',
                              style: GoogleFonts.nunito(
                                  fontSize: 27, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Text(
                            'Openings',
                            style: GoogleFonts.nunito(
                                fontSize: 10, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      height: 101,
                      width: 83,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 12,
                              ),
                              Text(
                                '${widget.location}',
                                style: GoogleFonts.nunito(fontSize: 12),
                              )
                            ],
                          ),
                          Center(
                            child: Text(
                              '${widget.openings}',
                              style: GoogleFonts.nunito(
                                  fontSize: 27, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Text(
                            'Openings',
                            style: GoogleFonts.nunito(
                                fontSize: 10, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 28),
                  child: Text(
                    'Required Skills',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < getJobsRequirements().length; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          '• ${getJobsRequirements()[i]}',
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ),
                    SizedBox(
                      height: 87,
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.black),
                      width: double.infinity,
                      height: 87,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 19, bottom: 19, left: 32, right: 43),
                        child: Center(
                          child: Text(
                            'Answer a quick question to explore this role and apply',
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child:
                            Text('You have 2 minutes to answer this question.'))
                  ],
                ),
                SizedBox(
                  height: 65,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          builder: (context) => ApplyBottomModel(),
                          context: context);
                    },
                    child: Text(
                      "Answer the Question",
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        elevation: 2.0,
                        minimumSize: Size(273, 47),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        side: BorderSide(color: Colors.black)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
