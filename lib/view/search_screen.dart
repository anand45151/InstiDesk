import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instidesk/view/search_result_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var country = [
    'India',
    'usa',
    'china',
  ];
  var state = [
    'gujarat',
    'rajesthan',
    'maharastra',
  ];
  var university = [
    'vnsgu',
    'gtu',
    'gls',
  ];
  String? selectedCountry;
  String? selectedcity;
  String? selectedUniversity;
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search International Courses",
                hintStyle: GoogleFonts.poppins(
                  color: const Color(0xff414D54),
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Color(0xff414D54),
                ),
                border: InputBorder.none,
              ),
            ),
            SizedBox(
              height: 29.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: const Color(0xffDDEBE5))),
              child: DropdownButton<String>(
                  isExpanded: true,
                  underline: const SizedBox(),
                  dropdownColor: const Color(0xffFDFDFD),
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  hint: Text(
                    'Country',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff414D54),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  value: selectedCountry,
                  items: country.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value == null) {
                      return;
                    }
                    setState(() {
                      selectedCountry = value;
                    });
                  }),
            ),
            SizedBox(
              height: 9.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: const Color(0xffDDEBE5))),
              child: DropdownButton<String>(
                  isExpanded: true,
                  underline: const SizedBox(),
                  dropdownColor: const Color(0xffFDFDFD),
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  hint: Text(
                    'State/ Province',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff414D54),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  value: selectedcity,
                  items: state.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value == null) {
                      return;
                    }
                    setState(() {
                      selectedcity = value;
                    });
                  }),
            ),
            SizedBox(
              height: 9.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: const Color(0xffDDEBE5))),
              child: DropdownButton<String>(
                  isExpanded: true,
                  underline: const SizedBox(),
                  dropdownColor: const Color(0xffFDFDFD),
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  hint: Text(
                    'University',
                    style: GoogleFonts.poppins(
                      color: const Color(0xff414D54),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  value: selectedUniversity,
                  items: country.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value == null) {
                      return;
                    }
                    setState(() {
                      selectedUniversity = value;
                    });
                  }),
            ),
            SizedBox(
              height: 29.h,
            ),
            SizedBox(
              height: 30.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchResultScreen(),
                      ));
                },
                style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(102.w, 30.h)),
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xff272727)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
                child: Text(
                  'Search',
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
