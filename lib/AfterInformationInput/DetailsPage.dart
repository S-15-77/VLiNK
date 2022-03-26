import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_app/Home_Page/Instructions.dart';
import 'package:project_app/InformationInput/provider.dart';
import 'package:project_app/MainHome/MainHome.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int? current = 0;
  List imgView = ["assests/images/det1.png", "assests/images/det2.png"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  top: 40,
                ),
                child: Row(
                  children: [
                    Text(
                      "Welcome ${Provider.of<addValues>(context, listen: false).name}!",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 23, top: 13, right: 23),
                child: Row(
                  children: [
                    Text(
                      ''' We hope you get a high-paying job at a reputed
 company, and we would like to help you take steps
 forward and make it a reality.''',
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      current == 1 ? Icons.arrow_back_ios_rounded : null,
                      size: 15.0,
                    ),
                    onPressed: () {},
                  ),
                  // SizedBox(
                  //   width: 13.0,
                  // ),
                  Text(
                    current == 0 ? "Idea of the Test" : "Outcome of the Test",
                    style: GoogleFonts.nunito(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  // SizedBox(
                  //   width: 13.0,
                  // ),
                  IconButton(
                    icon: Icon(
                      current == 0 ? Icons.arrow_forward_ios_rounded : null,
                      size: 15.0,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                      aspectRatio: 1.5,
                      viewportFraction: 0.9,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      enableInfiniteScroll: false,
                      height: 344.0,
                      initialPage: 0,
                      enlargeCenterPage: true,
                      onPageChanged: (index, page) {
                        setState(() {
                          current = index;
                        });
                      }),
                  items: imgView.map((imgUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          //margin: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: Image.asset(imgUrl),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "What are you waiting for?",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        (context),
                        MaterialPageRoute(
                          builder: (context) => BottomNav(),
                        ),
                      );
                    },
                    child: Text(
                      "Join the Training Batch",
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
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
