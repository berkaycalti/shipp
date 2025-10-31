import 'package:flutter/material.dart';

/// Additional Color Palette
/// Extended colors from Figma design system
/// These are additional colors beyond the core palette
class AppAdditionalColors {
  AppAdditionalColors._();

  // ========== Extended Palette Colors ==========
  
  // Blacks & Grays
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color white10 = Color(0x1AFFFFFF); // #FFFFFF0D (closest to 0x0D)
  static const Color gray252 = Color(0xFF252525);
  static const Color gray363 = Color(0xFF363636);
  
  // Blues
  static const Color blue059 = Color(0xFF0590FB);
  static const Color blue0FB = Color(0xFF0FBEBE);
  static const Color blue219 = Color(0xFF2196F3);
  static const Color blue256 = Color(0xFF2568EF);
  static const Color blue428 = Color(0xFF4285F4);
  static const Color blue4BB = Color(0xFF4BBEFD);
  static const Color blue55A = Color(0xFF55A2F0);
  static const Color blue56A = Color(0xFF56AAFF);
  static const Color blue61A = Color(0xFF61AFF6);
  static const Color blue64B = Color(0xFF64B5F6);
  
  // Light Blues & Cyan
  static const Color cyan0FB = Color(0xFF0FBEBE);
  static const Color lightBlueE1E = Color(0xFFE1EFFB);
  static const Color lightBlueBBD = Color(0xFFBBDEFB);
  static const Color lightBlueCCD = Color(0xFFCCDFED);
  static const Color lightBlueD7D = Color(0xFFD7D6FB);
  static const Color lightBlueF1F = Color(0xFFF1F1FB);
  
  // Greens
  static const Color green30D = Color(0xFF30D158);
  static const Color green34A = Color(0xFF34A853);
  static const Color green3EB = Color(0xFF3EB798);
  static const Color green77C = Color(0xFF77CC00);
  static const Color greenA0D = Color(0xFFA0D755);
  static const Color greenB4E = Color(0xFFB4E66E);
  static const Color greenC8F = Color(0xFFC8FF82);
  
  // Reds & Pinks
  static const Color redD32 = Color(0xFFD32F2F);
  static const Color redE30 = Color(0xFFE30917);
  static const Color redE50 = Color(0xFFE50027);
  static const Color redEE4 = Color(0xFFEE404C);
  static const Color redEF5 = Color(0xFFEF5350);
  static const Color redF33 = Color(0xFFF33939);
  static const Color redF40 = Color(0xFFF40000);
  static const Color redFD0 = Color(0xFFFD003A);
  static const Color redFF3 = Color(0xFFFF3636);
  static const Color redFF4 = Color(0xFFFF4C4C);
  static const Color pinkE45 = Color(0xFFE45A6E);
  static const Color pinkFF3 = Color(0xFFFF3366);
  
  // Oranges
  static const Color orangeF57 = Color(0xFFF57A21);
  static const Color orangeFF8 = Color(0xFFFF8A65);
  static const Color orangeFF9 = Color(0xFFFF901D);
  static const Color orangeFFA = Color(0xFFFFA000);
  static const Color orangeFFB = Color(0xFFFFB125);
  static const Color orangeFFC = Color(0xFFFFC350);
  static const Color orangeFFD = Color(0xFFFFDA2D);
  
  // Yellows
  static const Color yellowF5C = Color(0xFFF5C003);
  static const Color yellowF3B = Color(0xFFF3B007);
  static const Color yellowFBB = Color(0xFFFBBF00);
  static const Color yellowFBC = Color(0xFFFBBC05);
  static const Color yellowFFC = Color(0xFFFFCA28);
  static const Color yellowFFD = Color(0xFFFFD164);
  static const Color yellowFFD6 = Color(0xFFFFDC64);
  static const Color yellowFFE = Color(0xFFFFE17D);
  static const Color yellowFFF = Color(0xFFFFF082);
  
  // Browns & Tans
  static const Color brown644 = Color(0xFF64463C);
  static const Color brown5D4 = Color(0xFF5D4037);
  static const Color brown785 = Color(0xFF785546);
  static const Color brown7D5 = Color(0xFF7D5046);
  static const Color brown8D6 = Color(0xFF8D6E63);
  static const Color brown9C6 = Color(0xFF9C6846);
  static const Color brownAA7 = Color(0xFFAA7346);
  
  // Skin Tones & Beiges
  static const Color tanD29 = Color(0xFFD29B6E);
  static const Color tanCD9 = Color(0xFFCD915A);
  static const Color tanD59 = Color(0xFFD59F63);
  static const Color tanD7A = Color(0xFFD7AF7D);
  static const Color tanE6A = Color(0xFFE6AF78);
  static const Color tanF0C = Color(0xFFF0C087);
  static const Color tanFAD = Color(0xFFFAD098);
  static const Color tanFFC = Color(0xFFFFCCBC);
  static const Color tanFDB = Color(0xFFFDB43A);
  static const Color tanFFC9 = Color(0xFFFFC94D);
  static const Color tanEA9 = Color(0xFFEAAB92);
  static const Color tanF9C = Color(0xFFF9C6AA);
  static const Color tanFFD = Color(0xFFFFD6BD);
  static const Color tanFFE = Color(0xFFFFE1B4);
  
  // Purples & Violets
  static const Color purpleBB0 = Color(0xFFBB00FF);
  
  // Grays & Neutrals
  static const Color gray9FA = Color(0xFF9FA5A5);
  static const Color grayB0B = Color(0xFFB0BEC5);
  static const Color grayBBC = Color(0xFFBBC1C5);
  static const Color grayBDC = Color(0xFFBDC3C7);
  static const Color grayD7D = Color(0xFFD7DBDE);
  static const Color grayECE = Color(0xFFECEFF1);
  static const Color grayECF = Color(0xFFECF0F1);
  static const Color grayFAF = Color(0xFFFAFAFA);
  static const Color creamFFF = Color(0xFFFFF7ED);
  static const Color creamFFF7 = Color(0xFFFFFCEE);
  
  // Blue-Grays
  static const Color blueGray354 = Color(0xFF354A67);
  static const Color blueGray466 = Color(0xFF466288);
  
  // Google & Social Media Colors
  static const Color googleBlue = Color(0xFF4285F4);
  static const Color googleRed = Color(0xFFEB4335);
  static const Color googleYellow = Color(0xFFFBBC05);
  static const Color googleGreen = Color(0xFF34A853);
  
  // Apple Colors
  static const Color appleBlue = Color(0xFF007AFF);
  
  // Status & Semantic Colors (already in AppColors, but keeping for reference)
  static const Color primaryRed = Color(0xFFFF004F);
  static const Color successGreen = Color(0xFF06C270);
  
  // Gradient Colors (for future use)
  static const List<Color> primaryGradient = [
    Color(0xFFFF004F),
    Color(0xFFFF3366),
  ];
  
  static const List<Color> successGradient = [
    Color(0xFF05A660),
    Color(0xFF06C270),
  ];
}

