import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_app_ui/health_app_string.dart';
import 'package:health_app_ui/health_app_style.dart';
import 'package:health_app_ui/ui/health_signup_page.dart';

class HealthOnboardPage extends StatefulWidget {
  const HealthOnboardPage({Key key}) : super(key: key);

  @override
  _HealthOnboardPageState createState() => _HealthOnboardPageState();
}

class _HealthOnboardPageState extends State<HealthOnboardPage> {
  PageController _pageController;
  int _pageIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.yellow,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Stack(
              children: [
                Positioned(
                  top: 28,
                  right: 86,
                  child: Container(
                    height: 20,
                    width: 176,
                    decoration: BoxDecoration(color: ColorSystem.green),
                  ),
                ),
                Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'A complete',
                          style: GoogleFonts.kanit(fontSize: 42),
                        ),
                        Text('App for your',
                            style: GoogleFonts.kanit(fontSize: 42)),
                        Text('Health', style: GoogleFonts.kanit(fontSize: 42))
                      ],
                    )),
                Positioned(
                    left: 0,
                    top: 120,
                    bottom: 0,
                    right: 0,
                    child: Image.asset('${HealthAppString.CIRCLE_IMG}')),
              ],
            ),
          ),
          Expanded(
            flex: 14,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  _pageIndex = value;
                });
              },
              children: [
                SvgPicture.asset(HealthAppString.JOGGING_IMG,
                    fit: BoxFit.cover),
                SvgPicture.asset(HealthAppString.JOGGING_IMG,
                    fit: BoxFit.cover),
                SvgPicture.asset(HealthAppString.JOGGING_IMG, fit: BoxFit.cover)
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: _pageIndex == 0 ? Colors.white : ColorSystem.green,
                      border: Border.all(color: Colors.black, width: 1)),
                ),
                SizedBox(width: 8),
                Container(
                  width: 20,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: _pageIndex == 1 ? Colors.white : ColorSystem.green,
                      border: Border.all(color: Colors.black, width: 1)),
                ),
                SizedBox(width: 8),
                Container(
                  width: 20,
                  height: 7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: _pageIndex == 2 ? Colors.white : ColorSystem.green,
                      border: Border.all(color: Colors.black, width: 1)),
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HealthSignupPage()));
                  },
                  child: Container(
                    height: 64,
                    width: 364,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: ColorSystem.green),
                    child: Center(
                      child: Text('Try for free',
                          style: GoogleFonts.kanit(fontSize: 18)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? ',
                        style: GoogleFonts.kanit(fontSize: 18)),
                    Text('Login',
                        style: GoogleFonts.kanit(
                            fontSize: 18,
                            decoration: TextDecoration.underline)),
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
