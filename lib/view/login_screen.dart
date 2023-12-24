import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instidesk/main_screen.dart';

import 'package:instidesk/view/widgets/custom_textfield.dart';
import 'package:instidesk/view/widgets/password_fied.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _emailController;

  late final TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();

    super.dispose();
  }

  _signIn() {
    //final authProvider = Provider.of<AuthProvider>(context, listen: false);
    if (_formKey.currentState?.validate() ?? false) {
      // Map data = {
      //   'email': _emailController.text,
      //   'password': _passwordController.text,
      // };
      // authProvider.loginApi(data, context);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const MainScreen(),
          ),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
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
                      color: const Color(0xff414D54),
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
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.w),
                child: Text(
                  'Log In To Student Portal',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36.w),
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter email";
                          }
                          final bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value);
                          if (!emailValid) {
                            return "please enter correct email";
                          }
                          return null;
                        },
                        hintText: 'Email',
                      ),
                      PasswordField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter password";
                          }
                          RegExp regex = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                          if (!regex.hasMatch(value)) {
                            return "enter valid password";
                          }
                          return null;
                        },
                        controller: _passwordController,
                        hintText: 'Password',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 17.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30.h,
                      child: ElevatedButton(
                        onPressed:
                            //authProvider.signInLoading ? () {} :
                            _signIn,
                        style: ButtonStyle(
                            fixedSize:
                                MaterialStatePropertyAll(Size(102.w, 30.h)),
                            backgroundColor: const MaterialStatePropertyAll(
                                Color(0xff272727)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)))),
                        child:
                            // authProvider.signInLoading
                            //     ? const CircularProgressIndicator(
                            //         color: AppColor.white,
                            //       )
                            //     :
                            Text(
                          'Login',
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff414D54),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
            ]),
      ),
    );
  }
}
