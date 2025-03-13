import 'package:car_buy/constants.dart';
import 'package:car_buy/widgets/logintextfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Mylogintextfiled(
          iconData: Icons.person,
          controller: usernameController,
          hinttext: "User name",
          obscureText: false,
        ),
        SizedBox(height: 30.h),
        Mylogintextfiled(
          iconData: Icons.phone_android,
          controller: phoneController,
          hinttext: "Phone number",
          obscureText: true,
        ),
        SizedBox(height: 30.h),
        Mylogintextfiled(
          iconData: Icons.password,
          controller: passwordController,
          hinttext: "Password",
          obscureText: true,
        ),
        SizedBox(height: 40.h),
        Container(
          width: 350.w,
          height: 40.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10).w,
            color: MyColors.primaryColor,
          ),
          child: Center(
            child: Text(
              'Sign Up',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 30.w, top: 30.h),
          child: Row(
            children: [
              Text(
                "Already have an account ?",
                style: GoogleFonts.roboto(
                  color: Colors.grey.shade500,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                "Log In",
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
