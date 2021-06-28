import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_app_ui/health_app_string.dart';
import 'package:health_app_ui/health_app_style.dart';

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
          Expanded(child: Placeholder(), flex: 6),
          Expanded(
              child: PageView(
                children: [
                  SvgPicture.asset(
                    HealthAppString.JOGGING_IMG,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              flex: 14),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 1)),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 20,
                    height: 7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: ColorSystem.green,
                        border: Border.all(color: Colors.black, width: 1)),
                  ),
                  SizedBox(width: 8),
                  Container(
                    width: 20,
                    height: 7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: ColorSystem.green,
                        border: Border.all(color: Colors.black, width: 1)),
                  )
                ],
              ),
              flex: 1),
          SizedBox(height: 16),
          Expanded(
              child: Column(
                children: [
                  Container(
                    height: 64,
                    width: 364,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: ColorSystem.green),
                    child: Center(
                      child: Text('Try for free', style: GoogleFonts.kanit(fontSize: 18)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account? ', style: GoogleFonts.kanit(fontSize: 18)),
                      Text('Login', style: GoogleFonts.kanit(fontSize: 18, decoration: TextDecoration.underline)),

                    ],
                  )
                ],
              ),
              flex: 4),
        ],
      )),
    );
  }
}
