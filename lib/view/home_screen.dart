import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instidesk/view/collage_application_screen.dart';
import 'package:instidesk/view/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        body: Stack(
          children: [
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
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Column(
                children: [
                  Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      height: 97.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1, color: const Color(0xffDDEBE5)),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xffFFFFFF),
                              blurRadius: 10.0,
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hello , Priyanka Patel',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: const Color(0xff555F60),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Profile Status -',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: const Color(0xff555F60),
                                    ),
                                  ),
                                  Text(
                                    'IN VISA',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: const Color(0xffE42C64),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 37.h,
                                width: 138.w,
                                decoration: BoxDecoration(
                                  color: const Color(0xff3D3D3D),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 11.w,
                                    ),
                                    Image.asset('assets/images/user.png'),
                                    SizedBox(
                                      width: 14.w,
                                    ),
                                    Text(
                                      'Log In',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SearchScreen(),
                                  ));
                                },
                                child: Container(
                                  height: 37.h,
                                  width: 130.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 35.h,
                                        width: 35.w,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffC5CED3)
                                              .withOpacity(0.25),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: const Icon(Icons.search),
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Text(
                                        'Course Finder',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                          color: const Color(0xff555F60),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Container(
                    height: 118.h,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/banner.png"), // <-- BACKGROUND IMAGE
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Image.asset(
                  //   'assets/images/banner.png',
                  //   // height: 118.h,
                  //   fit: BoxFit.cover,
                  // ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 13.w, top: 5.h, right: 13.w),
                          height: 65.h,
                          decoration: BoxDecoration(
                            color: const Color(0xff3D3D3D),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xffDDEBE5),
                            ),
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Your\nVisas Status',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 20.h,
                                  width: 28.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text('VISA',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 8,
                                        color: const Color(0xff000000),
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 9.w,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 13.w, top: 5.h, right: 13.w),
                          height: 65.h,
                          decoration: BoxDecoration(
                            color: const Color(0xff2596BE),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xffDDEBE5),
                            ),
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Your\nCourses',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 20.h,
                                  width: 28.w,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text('C',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: const Color(0xff000000),
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 45.h,
                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                    decoration: BoxDecoration(
                      color: const Color(0xff2596BE),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xffDDEBE5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your College Applications ',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: const Color(0xffFCFCFC),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const CollageApplicationScreen(),
                                ));
                          },
                          child: Container(
                            height: 25.h,
                            width: 75.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xff3D3D3D),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Check Status',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 8,
                                color: const Color(0xffFCFCFC),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Container(
                    height: 45.h,
                    padding: EdgeInsets.symmetric(horizontal: 13.w),
                    decoration: BoxDecoration(
                      color: const Color(0xffFF0000),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xffDDEBE5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Search courses ',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: const Color(0xffFCFCFC),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SearchScreen(),
                            ));
                          },
                          child: Container(
                            height: 25.h,
                            width: 75.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xff3D3D3D),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Search',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 8,
                                color: const Color(0xffFCFCFC),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xffDDEBE5),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.w),
                          child: Text(
                            'Your Counseling Agent',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 9,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xffDDEBE5),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.w),
                          child: Text(
                            'Your First Step towards your Dream is right here. your counseling\n agent mentioned bellow will assist you',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                              color: const Color(0xff414D54),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.w),
                          child: Container(
                            height: 25.h,
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 1,
                                color: const Color(0xffDDEBE5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Agent Name',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 8,
                                    color: const Color(0xff414D54),
                                  ),
                                ),
                                Text(
                                  'Sampan Patel',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 8,
                                    color: const Color(0xff414D54),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17.w),
                          child: Container(
                            height: 25.h,
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 1,
                                color: const Color(0xffDDEBE5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Agent Contact',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 8,
                                    color: const Color(0xff414D54),
                                  ),
                                ),
                                Text(
                                  '+919825098250',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 8,
                                    color: const Color(0xff414D54),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
