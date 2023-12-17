import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class PasswordField extends StatefulWidget {
  const PasswordField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.validator,
      this.keyboardType,
      //   required this.label,
      this.maxLength});
  final TextEditingController controller;
  final String hintText;
  //final String label;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final int? maxLength;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Color(0xffDDEBE5)));
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 64.h,
          child: TextFormField(
            obscureText: obscureText,
            controller: widget.controller,
            validator: widget.validator,
            keyboardType: widget.keyboardType,
            maxLength: widget.maxLength,
            decoration: InputDecoration(
              border: border,
              enabledBorder: border,
              fillColor: const Color(0xffFDFDFD),
              focusedBorder: border.copyWith(
                borderSide: const BorderSide(color: Colors.grey),
              ),
              contentPadding: EdgeInsets.only(left: 16.w),
              hintText: widget.hintText,
              hintStyle: GoogleFonts.poppins(
                color: const Color(0xff414D54),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              suffixIconConstraints:
                  BoxConstraints(maxHeight: 20.h, maxWidth: 30.w),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () => setState(() => obscureText = !obscureText),
                  child: SvgPicture.asset(
                      'assets/images/${obscureText ? "eye-slash-regular" : "eye-regular"}.svg',
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
