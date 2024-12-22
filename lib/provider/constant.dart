import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConstants{
  static const Color primaryColor = Color(0xffECAD01);
  static const Color dividerColor = Color(0xffD9D9D9);

  //dark color
  static const Color darkBackColor = Color(0xff242424);
  static const Color darkInputColor = Color(0xff404040);
  static const Color darkInputBorderColor = Color(0xff676767);

  //light color
  static const Color lightBackColor = Color(0xfff9f9f9);
  static const Color lightInputColor = Color(0xfff6f6f6);
  static const Color lightInputBorderColor = Color(0xff676767);

  static final containerShadow = BoxShadow(
      color: Color(0xffCDCDCD),
      blurRadius: 10,
      spreadRadius: 0,
      offset: const Offset(0, 0)
  );

  static const double borderRadius = 12.0;
  static const double spaceSize = 8.0;
}
Gradient buttonGradient = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color(0xffDDA407), Color(0xff876404)],
  stops: [0.0, 1.0],
);

TextStyle s10Regular = TextStyle(fontFamily: "Sora", fontSize: 10, fontWeight: FontWeight.w400);
TextStyle s10Medium = TextStyle(fontFamily: "Sora", fontSize: 10, fontWeight: FontWeight.w500);
TextStyle s10SemiBold = TextStyle(fontFamily: "Sora", fontSize: 10, fontWeight: FontWeight.w600);
TextStyle s10Bold = TextStyle(fontFamily: "Sora", fontSize: 10, fontWeight: FontWeight.w700);

TextStyle s11Regular = TextStyle(fontFamily: "Sora", fontSize: 11, fontWeight: FontWeight.w400);
TextStyle s11Medium = TextStyle(fontFamily: "Sora", fontSize: 11, fontWeight: FontWeight.w500);
TextStyle s11SemiBold = TextStyle(fontFamily: "Sora", fontSize: 11, fontWeight: FontWeight.w600);
TextStyle s11Bold = TextStyle(fontFamily: "Sora", fontSize: 11, fontWeight: FontWeight.w700);

TextStyle s12Regular = TextStyle(fontFamily: "Sora", fontSize: 12, fontWeight: FontWeight.w400);
TextStyle s12Medium = TextStyle(fontFamily: "Sora", fontSize: 12, fontWeight: FontWeight.w500);
TextStyle s12SemiBold = TextStyle(fontFamily: "Sora", fontSize: 12, fontWeight: FontWeight.w600);
TextStyle s12Bold = TextStyle(fontFamily: "Sora", fontSize: 12, fontWeight: FontWeight.w700);

TextStyle s13Regular = TextStyle(fontFamily: "Sora", fontSize: 13, fontWeight: FontWeight.w400);
TextStyle s13Medium = TextStyle(fontFamily: "Sora", fontSize: 13, fontWeight: FontWeight.w500);
TextStyle s13SemiBold = TextStyle(fontFamily: "Sora", fontSize: 13, fontWeight: FontWeight.w600);
TextStyle s13Bold = TextStyle(fontFamily: "Sora", fontSize: 13, fontWeight: FontWeight.w700);

TextStyle s14Regular = TextStyle(fontFamily: "Sora", fontSize: 14, fontWeight: FontWeight.w400);
TextStyle s14Medium = TextStyle(fontFamily: "Sora", fontSize: 14, fontWeight: FontWeight.w500);
TextStyle s14SemiBold = TextStyle(fontFamily: "Sora", fontSize: 14, fontWeight: FontWeight.w600);
TextStyle s14Bold = TextStyle(fontFamily: "Sora", fontSize: 14, fontWeight: FontWeight.w700);

TextStyle s15Regular = TextStyle(fontFamily: "Sora", fontSize: 15, fontWeight: FontWeight.w400);
TextStyle s15Medium = TextStyle(fontFamily: "Sora", fontSize: 15, fontWeight: FontWeight.w500);
TextStyle s15SemiBold = TextStyle(fontFamily: "Sora", fontSize: 15, fontWeight: FontWeight.w600);
TextStyle s15Bold = TextStyle(fontFamily: "Sora", fontSize: 15, fontWeight: FontWeight.w700);

TextStyle s16Regular = TextStyle(fontFamily: "Sora", fontSize: 16, fontWeight: FontWeight.w400);
TextStyle s16Medium = TextStyle(fontFamily: "Sora", fontSize: 16, fontWeight: FontWeight.w500);
TextStyle s16SemiBold = TextStyle(fontFamily: "Sora", fontSize: 16, fontWeight: FontWeight.w600);
TextStyle s16Bold = TextStyle(fontFamily: "Sora", fontSize: 16, fontWeight: FontWeight.w700);

TextStyle s17Regular = TextStyle(fontFamily: "Sora", fontSize: 17, fontWeight: FontWeight.w400);
TextStyle s17Medium = TextStyle(fontFamily: "Sora", fontSize: 17, fontWeight: FontWeight.w500);
TextStyle s17SemiBold = TextStyle(fontFamily: "Sora", fontSize: 17, fontWeight: FontWeight.w600);
TextStyle s17Bold = TextStyle(fontFamily: "Sora", fontSize: 17, fontWeight: FontWeight.w700);

TextStyle s18Regular = TextStyle(fontFamily: "Sora", fontSize: 18, fontWeight: FontWeight.w400);
TextStyle s18Medium = TextStyle(fontFamily: "Sora", fontSize: 18, fontWeight: FontWeight.w500);
TextStyle s18SemiBold = TextStyle(fontFamily: "Sora", fontSize: 18, fontWeight: FontWeight.w600);
TextStyle s18Bold = TextStyle(fontFamily: "Sora", fontSize: 18, fontWeight: FontWeight.w700);

TextStyle s19Regular = TextStyle(fontFamily: "Sora", fontSize: 19, fontWeight: FontWeight.w400);
TextStyle s19Medium = TextStyle(fontFamily: "Sora", fontSize: 19, fontWeight: FontWeight.w500);
TextStyle s19SemiBold = TextStyle(fontFamily: "Sora", fontSize: 19, fontWeight: FontWeight.w600);
TextStyle s19Bold = TextStyle(fontFamily: "Sora", fontSize: 19, fontWeight: FontWeight.w700);

TextStyle s20Regular = TextStyle(fontFamily: "Sora", fontSize: 20, fontWeight: FontWeight.w400);
TextStyle s20Medium = TextStyle(fontFamily: "Sora", fontSize: 20, fontWeight: FontWeight.w500);
TextStyle s20SemiBold = TextStyle(fontFamily: "Sora", fontSize: 20, fontWeight: FontWeight.w600);
TextStyle s20Bold = TextStyle(fontFamily: "Sora", fontSize: 20, fontWeight: FontWeight.w700);

TextStyle s21Regular = TextStyle(fontFamily: "Sora", fontSize: 21, fontWeight: FontWeight.w400);
TextStyle s21Medium = TextStyle(fontFamily: "Sora", fontSize: 21, fontWeight: FontWeight.w500);
TextStyle s21SemiBold = TextStyle(fontFamily: "Sora", fontSize: 21, fontWeight: FontWeight.w600);
TextStyle s21Bold = TextStyle(fontFamily: "Sora", fontSize: 21, fontWeight: FontWeight.w700);

TextStyle s22Regular = TextStyle(fontFamily: "Sora", fontSize: 22, fontWeight: FontWeight.w400);
TextStyle s22Medium = TextStyle(fontFamily: "Sora", fontSize: 22, fontWeight: FontWeight.w500);
TextStyle s22SemiBold = TextStyle(fontFamily: "Sora", fontSize: 22, fontWeight: FontWeight.w600);
TextStyle s22Bold = TextStyle(fontFamily: "Sora", fontSize: 22, fontWeight: FontWeight.w700);

TextStyle s23Regular = TextStyle(fontFamily: "Sora", fontSize: 23, fontWeight: FontWeight.w400);
TextStyle s23Medium = TextStyle(fontFamily: "Sora", fontSize: 23, fontWeight: FontWeight.w500);
TextStyle s23SemiBold = TextStyle(fontFamily: "Sora", fontSize: 23, fontWeight: FontWeight.w600);
TextStyle s23Bold = TextStyle(fontFamily: "Sora", fontSize: 23, fontWeight: FontWeight.w700);

TextStyle s24Regular = TextStyle(fontFamily: "Sora", fontSize: 24, fontWeight: FontWeight.w400);
TextStyle s24Medium = TextStyle(fontFamily: "Sora", fontSize: 24, fontWeight: FontWeight.w500);
TextStyle s24SemiBold = TextStyle(fontFamily: "Sora", fontSize: 24, fontWeight: FontWeight.w600);
TextStyle s24Bold = TextStyle(fontFamily: "Sora", fontSize: 24, fontWeight: FontWeight.w700);

TextStyle s25Regular = TextStyle(fontFamily: "Sora", fontSize: 25, fontWeight: FontWeight.w400);
TextStyle s25Medium = TextStyle(fontFamily: "Sora", fontSize: 25, fontWeight: FontWeight.w500);
TextStyle s25SemiBold = TextStyle(fontFamily: "Sora", fontSize: 25, fontWeight: FontWeight.w600);
TextStyle s25Bold = TextStyle(fontFamily: "Sora", fontSize: 25, fontWeight: FontWeight.w700);

TextStyle s26Regular = TextStyle(fontFamily: "Sora", fontSize: 26, fontWeight: FontWeight.w400);
TextStyle s26Medium = TextStyle(fontFamily: "Sora", fontSize: 26, fontWeight: FontWeight.w500);
TextStyle s26SemiBold = TextStyle(fontFamily: "Sora", fontSize: 26, fontWeight: FontWeight.w600);
TextStyle s26Bold = TextStyle(fontFamily: "Sora", fontSize: 26, fontWeight: FontWeight.w700);

TextStyle s27Regular = TextStyle(fontFamily: "Sora", fontSize: 27, fontWeight: FontWeight.w400);
TextStyle s27Medium = TextStyle(fontFamily: "Sora", fontSize: 27, fontWeight: FontWeight.w500);
TextStyle s27SemiBold = TextStyle(fontFamily: "Sora", fontSize: 27, fontWeight: FontWeight.w600);
TextStyle s27Bold = TextStyle(fontFamily: "Sora", fontSize: 27, fontWeight: FontWeight.w700);

TextStyle s28Regular = TextStyle(fontFamily: "Sora", fontSize: 28, fontWeight: FontWeight.w400);
TextStyle s28Medium = TextStyle(fontFamily: "Sora", fontSize: 28, fontWeight: FontWeight.w500);
TextStyle s28SemiBold = TextStyle(fontFamily: "Sora", fontSize: 28, fontWeight: FontWeight.w600);
TextStyle s28Bold = TextStyle(fontFamily: "Sora", fontSize: 28, fontWeight: FontWeight.w700);

TextStyle s29Regular = TextStyle(fontFamily: "Sora", fontSize: 29, fontWeight: FontWeight.w400);
TextStyle s29Medium = TextStyle(fontFamily: "Sora", fontSize: 29, fontWeight: FontWeight.w500);
TextStyle s29SemiBold = TextStyle(fontFamily: "Sora", fontSize: 29, fontWeight: FontWeight.w600);
TextStyle s29Bold = TextStyle(fontFamily: "Sora", fontSize: 29, fontWeight: FontWeight.w700);

TextStyle s30Regular = TextStyle(fontFamily: "Sora", fontSize: 30, fontWeight: FontWeight.w400);
TextStyle s30Medium = TextStyle(fontFamily: "Sora", fontSize: 30, fontWeight: FontWeight.w500);
TextStyle s30SemiBold = TextStyle(fontFamily: "Sora", fontSize: 30, fontWeight: FontWeight.w600);
TextStyle s30Bold = TextStyle(fontFamily: "Sora", fontSize: 30, fontWeight: FontWeight.w700);