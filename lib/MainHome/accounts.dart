import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/InformationInput/provider.dart';
import 'package:project_app/MainHome/ProfilePage/model.dart';
import 'package:provider/provider.dart';

import 'AllClasses/TabClasses.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  // List<Profile> list = [];
  // void fetchData() async {
  //
  //
  //   for (int i = 0; i < data.docs.length; i++) {
  //     Model model = Model(
  //         data.docs[i].data()['title'],
  //         data.docs[i].data()['price'],
  //         data.docs[i].data()['imageURL'],
  //         data.docs[i].data()['desc'],
  //         data.docs[i].data()['seller']);
  //     list.add(model);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 31, top: 43, bottom: 33),
                  child: Text(
                    'My Account',
                    style: GoogleFonts.nunito(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Center(
                  child: Container(
                    height: 159,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 20),
                          child: CircleAvatar(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.white,
                            radius: 40,
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35, left: 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${Provider.of<addValues>(context, listen: false).name}',
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700, fontSize: 16),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone_outlined,
                                    size: 15,
                                  ),
                                  Text(
                                    "${Provider.of<addValues>(context, listen: false).phone}",
                                    style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.mail_outline,
                                    size: 15,
                                  ),
                                  Text(
                                    "${Provider.of<addValues>(context, listen: false).email}",
                                    style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Save Profile'),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black,
                                    onPrimary: Colors.white,
                                    elevation: 2.0,
                                    minimumSize: Size(140, 32),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    side: BorderSide(color: Colors.black)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 31, top: 31, bottom: 33),
                  child: Text(
                    'My Bio',
                    style: GoogleFonts.nunito(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Center(
                  child: Container(
                    height: 159,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                      child: Text(
                          ''' ${Provider.of<addValues>(context, listen: false).bioValue}'''),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  child: DefaultTabController(
                      length: 3,
                      child: Scaffold(
                        appBar: TabBar(
                          indicatorWeight: 3.0,
                          indicatorColor: Color(0xFFFFCD4C),
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: [
                            Tab(
                              child: Text(
                                "All",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "UI/UX",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Java",
                                style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        body: TabBarView(
                          children: [
                            Center(
                              child: Container(
                                height: 159,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, bottom: 20),
                                      child: CircleAvatar(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.white,
                                        radius: 40,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35, left: 17),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${Provider.of<addValues>(context, listen: false).name}',
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.phone_outlined,
                                                size: 15,
                                              ),
                                              Text(
                                                "${Provider.of<addValues>(context, listen: false).phone}",
                                                style: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.mail_outline,
                                                size: 15,
                                              ),
                                              Text(
                                                "${Provider.of<addValues>(context, listen: false).email}",
                                                style: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Share Profile'),
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.black,
                                                onPrimary: Colors.white,
                                                elevation: 2.0,
                                                minimumSize: Size(140, 32),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                side: BorderSide(
                                                    color: Colors.black)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 159,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, bottom: 20),
                                      child: CircleAvatar(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.white,
                                        radius: 40,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35, left: 17),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${Provider.of<addValues>(context, listen: false).name}',
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.phone_outlined,
                                                size: 15,
                                              ),
                                              Text(
                                                "${Provider.of<addValues>(context, listen: false).phone}",
                                                style: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.mail_outline,
                                                size: 15,
                                              ),
                                              Text(
                                                "${Provider.of<addValues>(context, listen: false).email}",
                                                style: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Share Profile'),
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.black,
                                                onPrimary: Colors.white,
                                                elevation: 2.0,
                                                minimumSize: Size(140, 32),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                side: BorderSide(
                                                    color: Colors.black)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 159,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, bottom: 20),
                                      child: CircleAvatar(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.white,
                                        radius: 40,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35, left: 17),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${Provider.of<addValues>(context, listen: false).name}',
                                            style: GoogleFonts.nunito(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.phone_outlined,
                                                size: 15,
                                              ),
                                              Text(
                                                "${Provider.of<addValues>(context, listen: false).phone}",
                                                style: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.mail_outline,
                                                size: 15,
                                              ),
                                              Text(
                                                "${Provider.of<addValues>(context, listen: false).email}",
                                                style: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Share Profile'),
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.black,
                                                onPrimary: Colors.white,
                                                elevation: 2.0,
                                                minimumSize: Size(140, 32),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                side: BorderSide(
                                                    color: Colors.black)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
