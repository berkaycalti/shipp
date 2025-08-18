import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shipp/constants/colors.dart';
import 'screens/auth/login_screen.dart';

void main() {
  runApp(const ShippApp());
}

class ShippApp extends StatelessWidget {
  const ShippApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: AppColors.background,
          fontFamily: 'Clash Grotesk Variable',
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}