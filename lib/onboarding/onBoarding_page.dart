import 'dart:ui';
import 'package:get/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'package:project_app/Register/Register.dart';
import 'package:project_app/onboarding/onboarding_controller.dart';

class OnBoardingPage extends StatelessWidget {
  final _controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onboardingPages.length,
                controller: _controller.pageController,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
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
                        Text(
                          _controller.onboardingPages[index].title,
                          style: _controller.onboardingPages[index].titleStyle,
                        ),
                        SizedBox(
                          height: 42,
                        ),
                        Image.asset(
                          _controller.onboardingPages[index].images,
                          width: _controller.onboardingPages[index].imagewidth,
                          height:
                              _controller.onboardingPages[index].imageheight,
                        ),
                        SizedBox(
                          height: 31,
                        ),
                        Text(_controller.onboardingPages[index].subTitle,
                            style: _controller
                                .onboardingPages[index].subTitleStyle),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            _controller.onboardingPages[index].body,
                            style: _controller.onboardingPages[index].bodystyle,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            Positioned(
              bottom: 134,
              left: 182,
              child: Row(
                children: List.generate(
                  _controller.onboardingPages.length,
                  (index) => Obx(() {
                    return Container(
                      margin: EdgeInsets.all(4),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: _controller.selectedPageIndex == index
                            ? Colors.black
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              left: 29,
              bottom: 34,
              child: ElevatedButton(
                child: Obx(() {
                  return Text(_controller.isLastPage ? "Login" : "Skip");
                }),
                onPressed: () {
                  if (_controller.isLastPage) {
                    //print("is last");
                    Navigator.push(
                      (context),
                      MaterialPageRoute(
                        builder: (context) =>
                            Register(selectedButton: Reg.Login),
                      ),
                    );
                  } else {
                    _controller.pageController.jumpToPage(2);
                    // print("not last");
                  }
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
            Positioned(
              right: 30,
              bottom: 34,
              child: ElevatedButton(
                child: Obx(() {
                  return Text(_controller.isLastPage ? "Register" : "Next");
                }),
                onPressed: () {
                  if (_controller.isLastPage) {
                    print("is last");
                    Navigator.push(
                      (context),
                      MaterialPageRoute(
                        builder: (context) => Register(
                          selectedButton: Reg.Register,
                        ),
                      ),
                    );
                  } else {
                    _controller.pageController.nextPage(
                        duration: 300.milliseconds, curve: Curves.ease);
                    print("not last");
                  }
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    elevation: 2.0,
                    minimumSize: Size(146, 47),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    side: BorderSide(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
