import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_app_ui/health_app_string.dart';
import 'package:health_app_ui/health_app_style.dart';

class HealthHomePage extends StatefulWidget {
  const HealthHomePage({Key key}) : super(key: key);

  @override
  _HealthHomePageState createState() => _HealthHomePageState();
}

class _HealthHomePageState extends State<HealthHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 72,
                decoration: BoxDecoration(
                    color: Color(0xffF7F8F7),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(17),
                        topLeft: Radius.circular(17))),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: ColorSystem.green,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(17)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(HealthAppString.DISCOVERY_IMG),
                            Text('Home', style: GoogleFonts.kanit(fontSize: 18))
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: SvgPicture.asset(HealthAppString.CHART_IMG)),
                    Expanded(child: SvgPicture.asset(HealthAppString.PROFILE_IMG))

                  ],
                ),
              ),
          )
        ],
      ),
    );
  }
}
