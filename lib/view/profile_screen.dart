import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              child: SvgPicture.asset('assets/images/notify.svg'),
            )
          ],
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Text(
              'InstiDesk',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: const Color(0xff414D54),
              ),
            ),
          ),
          backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
          elevation: 0, // <-- ELEVATION ZEROED
        ),
        body: Stack(children: [
          Container(
            height: 393.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/background.png"), // <-- BACKGROUND IMAGE
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: ListView(children: [
                SizedBox(
                  height: 28.h,
                ),
                Center(
                  child: Container(
                    height: 60.h,
                    width: 60.h,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff2596BE),
                    ),
                    child: Text(
                      'P',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF316163)
                              .withOpacity(0.1), // Set your shadow color
                          offset: const Offset(0, 0), // Set your x and y offset
                          blurRadius: 12, // Set your blur radius
                          spreadRadius: 0, // Set your spread radius
                        ),
                      ],
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(width: 1, color: const Color(0xffDDEBE5))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Hello , Priyanka Patel',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                          color: const Color(0xff414D54),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Contact Number',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            '+91 9825098250',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Branch ',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            'GIHO_2566',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            'priyankapatel@gmail.com',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Preferred Country',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            'Canada',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Purpose',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            'Student Visa',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF316163)
                              .withOpacity(0.1), // Set your shadow color
                          offset: const Offset(0, 0), // Set your x and y offset
                          blurRadius: 12, // Set your blur radius
                          spreadRadius: 0, // Set your spread radius
                        ),
                      ],
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(width: 1, color: const Color(0xffDDEBE5))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Personal Details',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                          color: const Color(0xff414D54),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Full Name',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            'Priyanka Patel',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Address',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            '34, KRISHNA JYOT APP\nSIDDHI PALACE , SURAT',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Birth Date',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            '20/07/2001',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Status',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Container(
                            height: 18.h,
                            width: 60.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xff2CD456),
                            ),
                            child: Text(
                              'In Visa',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 8,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF316163)
                              .withOpacity(0.1), // Set your shadow color
                          offset: const Offset(0, 0), // Set your x and y offset
                          blurRadius: 12, // Set your blur radius
                          spreadRadius: 0, // Set your spread radius
                        ),
                      ],
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(width: 1, color: const Color(0xffDDEBE5))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Education Details',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 11,
                          color: const Color(0xff414D54),
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Edu. Level',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            'Bachelor Degree',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Result',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            ' 70 GPI',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Stream',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            ' Computer Science',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Backlogs',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            '0',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Language',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            'English',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Passing Year',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            '2021',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: SizedBox(
                          width: 44.w,
                          child: const Divider(
                            thickness: 1,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Edu. Level',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            'Bachelor Degree',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Result',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            '70 Percent',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Stream',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            'Commerce',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Backlogs',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            '0',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Language',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            'English',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Passing Year',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                          Text(
                            '2017',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14.h,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                )
              ]),
            ),
          )
        ]));
  }
}
