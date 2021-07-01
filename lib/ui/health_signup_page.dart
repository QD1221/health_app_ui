import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_app_ui/health_app_style.dart';
import 'package:health_app_ui/ui/health_home_page.dart';

class HealthSignupPage extends StatefulWidget {
  const HealthSignupPage({Key key}) : super(key: key);

  @override
  _HealthSignupPageState createState() => _HealthSignupPageState();
}

class _HealthSignupPageState extends State<HealthSignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  bottom: 36,
                  left: 120,
                  right: 120,
                  child: Center(  
                    child: Container(
                      height: 16,
                      width: 200,
                      decoration: BoxDecoration(color: ColorSystem.yellow),
                    ),
                  ),
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome to',
                          style: GoogleFonts.kanit(fontSize: 38),
                        ),
                        Text(
                          'Ideal Fit',
                          style: GoogleFonts.kanit(fontSize: 38),
                        )
                      ],
                    )),
              ],
            ),
            flex: 4,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 64,
                  width: 364,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(17)),
                  child: Center(
                    child: Text(
                      'Continue with Apple',
                      style:
                          GoogleFonts.kanit(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Container(
                    height: 64,
                    width: 364,
                    decoration: BoxDecoration(
                        color: ColorSystem.blue,
                        borderRadius: BorderRadius.circular(17)),
                    child: Center(
                      child: Text(
                        'Continue with Google',
                        style: GoogleFonts.kanit(
                            fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 64,
                  width: 364,
                  decoration: BoxDecoration(
                      color: ColorSystem.darkBlue,
                      borderRadius: BorderRadius.circular(17)),
                  child: Center(
                    child: Text(
                      'Continue with Facebook',
                      style:
                          GoogleFonts.kanit(fontSize: 18, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            flex: 6,
          ),
          Expanded(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 8,
                    width: 24,
                    color: ColorSystem.yellow,
                  ),
                ),
                Center(
                  child: Text(
                    'Or',
                    style: GoogleFonts.kanit(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 64,
                    width: 364,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(17)),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your full name'),
                      ),
                    )),
                Container(
                    height: 64,
                    width: 364,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(17)),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your email'),
                      ),
                    )),
                Container(
                  height: 64,
                  width: 364,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(17)),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your password'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HealthHomePage()));
                  },
                  child: Container(
                      height: 64,
                      width: 364,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: ColorSystem.green),
                      child: Center(
                        child: Text(
                          'Signup',
                          style: GoogleFonts.kanit(fontSize: 18),
                        ),
                      )),
                ),
              ],
            ),
            flex: 8,
          ),
        ],
      )),
    );
  }
}
