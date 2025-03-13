import 'package:car_buy/constants.dart';
import 'package:car_buy/home_page.dart';
import 'package:car_buy/widgets/logintextfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Mylogintextfiled(
          iconData: Icons.person,
          controller: usernameController,
          hinttext: "Username",
          obscureText: false,
        ),
        SizedBox(height: 30.h),
        Mylogintextfiled(
          iconData: Icons.password,
          controller: passwordController,
          hinttext: "Password",
          obscureText: true,
        ),
        SizedBox(height: 40.h),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Container(
            width: 350.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10).w,
              color: MyColors.primaryColor,
            ),
            child: Center(
              child: Text(
                'Log In',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 30.w, top: 30.h),
          child: Row(
            children: [
              Text(
                "Don't have an account ?",
                style: GoogleFonts.roboto(
                  color: Colors.grey.shade500,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                "Sign Up",
                style: GoogleFonts.roboto(
                  color: MyColors.primaryColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
