import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/MainHome/Accounts/data.dart';

class TabClasses extends StatefulWidget {
  const TabClasses({Key? key}) : super(key: key);

  @override
  _TabClassesState createState() => _TabClassesState();
}

class _TabClassesState extends State<TabClasses> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
              SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < getClasses().length; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 24, bottom: 8),
                        child: Container(
                          height: 58,
                          width: 327,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '${getClasses()[i].position}',
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text('${getClasses()[i].company}'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('${getClasses()[i].durations}'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('${getClasses()[i].tasks} tasks')
                                    ],
                                  )
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_drop_down_sharp))
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < getClasses().length; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 24, bottom: 8),
                        child: Container(
                          height: 58,
                          width: 327,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '${getClasses()[i].position}',
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text('${getClasses()[i].company}'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('${getClasses()[i].durations}'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('${getClasses()[i].tasks} tasks')
                                    ],
                                  )
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_drop_down_sharp))
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < getClasses().length; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 24, bottom: 8),
                        child: Container(
                          height: 58,
                          width: 327,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '${getClasses()[i].position}',
                                      style: GoogleFonts.nunito(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text('${getClasses()[i].company}'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('${getClasses()[i].durations}'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text('${getClasses()[i].tasks} tasks')
                                    ],
                                  )
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_drop_down_sharp))
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
