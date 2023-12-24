import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CollageApplicationScreen extends StatefulWidget {
  const CollageApplicationScreen({super.key});

  @override
  State<CollageApplicationScreen> createState() =>
      _CollageApplicationScreenState();
}

class _CollageApplicationScreenState extends State<CollageApplicationScreen> {
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 17.h),
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 45.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            alignment: Alignment.centerLeft,
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
              border: Border.all(
                width: 1,
                color: const Color(0xffDDEBE5),
              ),
            ),
            child: Text(
              'Your College Applications & Status',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 11,
                color: const Color(0xff414D54),
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
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
                        color: const Color(0xffffffff),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFFEAEBEB), // Set your shadow color
                            offset: Offset(0, 0), // Set your x and y offset
                            blurRadius: 15, // Set your blur radius
                            spreadRadius: 0, // Set your spread radius
                          ),
                        ],
                        border: Border.all(
                            width: 1, color: const Color(0xffDDEBE5))),
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
                                'ALGONQUIN COLLEGE',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: const Color(0xff414D54),
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
                                    'Canada, Ottawa',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      color: const Color(0xff414D54),
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
                        const Divider(
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
                                    'Application Date',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      color: const Color(0xff414D54),
                                    ),
                                  ),
                                  Text(
                                    ' 20/12/2022',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      color: const Color(0xff414D54),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Course',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      color: const Color(0xff414D54),
                                    ),
                                  ),
                                  Text(
                                    'Web Development',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      color: const Color(0xff414D54),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Intake',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      color: const Color(0xff414D54),
                                    ),
                                  ),
                                  Text(
                                    'January 24',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      color: const Color(0xff414D54),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Time',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      color: const Color(0xff414D54),
                                    ),
                                  ),
                                  Text(
                                    '2 Years',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8,
                                      decoration: TextDecoration.underline,
                                      color: const Color(0xff414D54),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 6.w),
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1,
                                              color: const Color(0xffDDEBE5))),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Offer Date',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color:
                                                      const Color(0xff414D54),
                                                ),
                                              ),
                                              Text(
                                                'Mar 14 , 23',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color:
                                                      const Color(0xff414D54),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Offer Type',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color:
                                                      const Color(0xff414D54),
                                                ),
                                              ),
                                              Text(
                                                ' Conditional',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color:
                                                      const Color(0xff414D54),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6.w,
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 6.w),
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 1,
                                              color: const Color(0xffDDEBE5))),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Selection Date',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color:
                                                      const Color(0xff414D54),
                                                ),
                                              ),
                                              Text(
                                                'Mar 14 , 23',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color:
                                                      const Color(0xff414D54),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Course Date',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color:
                                                      const Color(0xff414D54),
                                                ),
                                              ),
                                              Text(
                                                'Mar 14 , 23',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color:
                                                      const Color(0xff414D54),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6.w),
                                    height: 50.h,
                                    width: 230.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: const Color(0xffDDEBE5))),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Fees Status',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 8,
                                                color: const Color(0xff414D54),
                                              ),
                                            ),
                                            Text(
                                              'Fees Paid',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 8,
                                                color: const Color(0xff414D54),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Paid Date',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 8,
                                                color: const Color(0xff414D54),
                                              ),
                                            ),
                                            Text(
                                              'Mar 30 , 23',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 8,
                                                color: const Color(0xff414D54),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Amount',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 8,
                                                color: const Color(0xff414D54),
                                              ),
                                            ),
                                            Text(
                                              ' \$10,000',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 8,
                                                color: const Color(0xff414D54),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Image.asset('assets/images/canada.png')
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Container(
                                height: 26.h,
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(horizontal: 7.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      width: 1, color: const Color(0xffDDEBE5)),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Your Application Status',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 8,
                                        color: const Color(0xff414D54),
                                      ),
                                    ),
                                    Container(
                                      height: 18.h,
                                      width: index == 1 ? 164.w : 114.w,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: index == 1
                                            ? const Color(0xff2596BE)
                                            : const Color(0xff2CD456),
                                      ),
                                      child: Text(
                                        index == 1
                                            ? 'Application Declined by Student'
                                            : 'offer letter received ',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 8,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
