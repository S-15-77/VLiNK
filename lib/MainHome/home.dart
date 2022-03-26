import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/InformationInput/provider.dart';
import 'package:project_app/MainHome/Accounts/ApplyJobs.dart';
import 'package:project_app/MainHome/Accounts/BottomModal.dart';
import 'package:provider/provider.dart';
import 'package:project_app/MainHome/Accounts/data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    var jobs = getJobs();
    print(jobs);
    print("hello");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 43, left: 23),
              child: Text(
                'Welcome ${Provider.of<addValues>(context, listen: false).name}!',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700, fontSize: 22),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 13, left: 23, right: 37),
              child: Text(
                  'Here are some trending profiles from various fields and companies. Check them out!'),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 23),
                  child: Text(
                    'Matching Profiles',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 34),
                  child: IconButton(
                      onPressed: () {
                        print(getJobs());
                        showModalBottomSheet(
                            builder: (context) => BottomModel(),
                            context: context);
                      },
                      icon: Icon(Icons.vertical_split)),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < getJobs().length; i++)
                      Padding(
                        padding:
                            EdgeInsets.only(left: 24, bottom: 7, right: 25),
                        child: Row(
                          children: [
                            Container(
                              child: Center(
                                child: Text(
                                  '      ${getJobs()[i].openings} \nopenings',
                                  style:
                                      GoogleFonts.nunito(color: Colors.white),
                                ),
                              ),
                              height: 63,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0)),
                                color: Colors.black,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 63,
                                width: 262,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text('${getJobs()[i].position}'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on),
                                            Text('${getJobs()[i].location}'),
                                            SizedBox(
                                              width: 80,
                                            ),
                                            Text('${getJobs()[i].salary}'),
                                          ],
                                        )
                                      ],
                                    ),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            side:
                                                BorderSide(color: Colors.black),
                                            onPrimary: Colors.black,
                                            primary: Colors.white,
                                            shape: CircleBorder()),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => ApplyJobs(
                                                      jobTitle:
                                                          getJobs()[i].position,
                                                      location:
                                                          getJobs()[i].location,
                                                      salary:
                                                          getJobs()[i].salary,
                                                      openings:
                                                          getJobs()[i].openings,
                                                    )),
                                          );
                                        },
                                        child: Icon(Icons.arrow_forward)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
