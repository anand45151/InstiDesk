import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instidesk/main_screen.dart';
import 'package:instidesk/utils/shared_prefs.dart';
import 'package:instidesk/view/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final token = SharedPrefs.instance().token;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 35.h, right: 33.w),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'InstiDesk',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Color(0xff414D54),
                ),
              ),
            ),
          ),
          Image.asset(
            'assets/images/onboarding.png',
            width: double.infinity,
            height: 438.h,
            //  height: 526.h,
          ),
          SizedBox(height: 31.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 39.w),
            child: Text(
              'Let\'s Get Started',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff414D54),
              ),
            ),
          ),
          SizedBox(height: 3.h),
          Padding(
            padding: EdgeInsets.only(left: 39.w),
            child: Text(
              'Our goal is to ensure that you have everything you need\n to feel comfortable as a student , and to smother your\n application process  .',
              style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xff7D94A0),
              ),
            ),
          ),
          SizedBox(height: 29.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 39.w),
            child: Row(
              children: [
                Container(
                  height: 7.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                      color: Color(0xff272727),
                      borderRadius: BorderRadius.circular(5)),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Container(
                  height: 7.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                      color: Color(0xff1300FF),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 39.w),
            child: Text(
              'Student Portal',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 10,
                color: Color(0xff414D54),
              ),
            ),
          ),
          SizedBox(
            height: 65.h,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        token != null ? MainScreen() : LoginScreen(),
                  ));
                },
                child: Container(
                  height: 30.h,
                  width: 79.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff272727)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Next',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      SvgPicture.asset('assets/images/arrow.svg')
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
