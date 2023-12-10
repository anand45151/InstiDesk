import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Text(
            'InstiDesk',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Color(0xff414D54),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: SvgPicture.asset('assets/images/notify.svg'),
          )
        ],
        backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
        elevation: 0, // <-- ELEVATION ZEROED
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Results of International Courses ",
              style: GoogleFonts.poppins(
                color: Color(0xff414D54),
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xffDDEBE5))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 8.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 17.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'ACADIA UNIVERSITY',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Color(0xff414D54),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/globe.png',
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      'Canada, Nova Scotia',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        color: Color(0xff414D54),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   height: 8.h,
                          // ),
                          Divider(
                            thickness: 1,
                            color: Color(0xffDDEBE5),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 17.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Course Name',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        color: Color(0xff414D54),
                                      ),
                                    ),
                                    Text(
                                      'BACHELOR OF ARTS-PSYCHOLOGY',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        color: Color(0xff414D54),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Campus',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        color: Color(0xff414D54),
                                      ),
                                    ),
                                    Text(
                                      'WOLFVILLE',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        color: Color(0xff414D54),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Coaching Requirements',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        color: Color(0xff414D54),
                                      ),
                                    ),
                                    Text(
                                      '6.5 ( 6.0 )',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        color: Color(0xff414D54),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Official Course Link',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        color: Color(0xff414D54),
                                      ),
                                    ),
                                    Text(
                                      'Open Link',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        decoration: TextDecoration.underline,
                                        color: Color(0xff414D54),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Container(
                                  height: 25.h,
                                  width: 161.h,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 7.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1, color: Color(0xffDDEBE5)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Course Status ',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8,
                                          color: Color(0xff414D54),
                                        ),
                                      ),
                                      Container(
                                        height: 16.h,
                                        width: 67.w,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xff2CD456),
                                        ),
                                        child: Text(
                                          'Open',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 8,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 11.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 20.h,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            fixedSize: MaterialStatePropertyAll(
                                                Size(102.w, 20.h)),
                                            backgroundColor:
                                                const MaterialStatePropertyAll(
                                                    Color(0xff272727)),
                                            shape: MaterialStatePropertyAll(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)))),
                                        child: Text(
                                          'Add To Shortlist',
                                          style: GoogleFonts.poppins(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Image.asset('assets/images/canada.png')
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
