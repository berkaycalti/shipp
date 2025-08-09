import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shipp/constants/colors.dart';
import 'package:shipp/constants/text_styles.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              Text("Giriş Yap", style: AppTextStyles.heading.copyWith(fontSize: 26.sp)),
              SizedBox(height: 8.h),
              Text("Hesabınıza giriş yapın", style: AppTextStyles.subheading.copyWith(fontSize: 14.sp)),

              SizedBox(height: 40.h),

              // E-posta Alanı
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-posta',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 14.sp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  filled: true,
                  // ignore: deprecated_member_use
                  fillColor: Colors.white.withOpacity(0.05),
                ),
              ),
              SizedBox(height: 16.h),

              // Şifre Alanı
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 14.sp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.05),
                ),
              ),

              SizedBox(height: 24.h),

              // Giriş Butonu
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Backend bağlantısı yapılacak
                  },
                  child: Text("Giriş Yap",
                      style: TextStyle(fontSize: 16.sp, color: Colors.white)),
                ),
              ),

              SizedBox(height: 16.h),

              // Kayıt Ol Linki
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hesabınız yok mu?",
                      style: TextStyle(fontSize: 14.sp, color: Colors.white)),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>  RegisterScreen(),
                        ),
                      );
                    },
                    child: Text("Kayıt Ol",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.primary,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
