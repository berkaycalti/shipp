import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shipp/constants/text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 375.w,
            height: 812.h,
            child: Stack(
              children: [
                // Main container matching Figma
                Positioned(
                  left: 16.w,
                  top: 81.h,
                  child: SizedBox(
                    width: 343.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Top graphic from assets (Figma)
                        SizedBox(
                          width: 120.w,
                          height: 120.w,
                          child: SvgPicture.asset(
                            'assets/images/login/Group.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 24.h),
                        // Card
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: const Alignment(0.87, 1.00),
                              end: const Alignment(0.00, 0.61),
                              colors: [
                                const Color(0x4FBFBFBF),
                                Colors.black.withOpacity(0),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Colors.white.withOpacity(0.60),
                              ),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Giriş Yap',
                                style: AppTextStyles.loginTitle.copyWith(fontSize: 24.sp),
                              ),
                              SizedBox(height: 6.h),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/login/hi.svg',
                                    width: 20.w,
                                    height: 20.w,
                                  ),
                                  SizedBox(width: 6.w),
                                  Text(
                                    'Seni görmek güzel!',
                                    style: AppTextStyles.loginSubtitle.copyWith(fontSize: 14.sp),
                                  ),
                                ],
                              ),
                              SizedBox(height: 36.h),
                              // Phone input
                              _PhoneInput(),
                              SizedBox(height: 24.h),
                              // Login pill button
                              Opacity(
                                opacity: 0.9,
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 56.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFFF3366),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60.r),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Giriş Yap',
                                      style: AppTextStyles.buttonText.copyWith(fontSize: 14.sp),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 24.h),
                              Center(
                                child: Opacity(
                                  opacity: 0.7,
                                  child: Text(
                                    'VEYA',
                                    style: AppTextStyles.orText.copyWith(fontSize: 11.sp),
                                  ),
                                ),
                              ),
                              SizedBox(height: 24.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _SocialIcon(asset: 'assets/images/login/google.svg'),
                                  
                                  SizedBox(width: 24.w),
                                  _SocialIcon(asset: 'assets/images/login/apple.svg'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Terms text near bottom
                Positioned(
                  left: 44.w,
                  top: 748.h,
                  child: SizedBox(
                    width: 287.w,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Katılarak, ',
                            style: AppTextStyles.termsText
                                .copyWith(color: Colors.white.withOpacity(0.5), fontSize: 11.sp),
                          ),
                          TextSpan(
                            text: 'Şartlar ve Gizlilik Politikamızı',
                            style: AppTextStyles.termsText
                                .copyWith(decoration: TextDecoration.underline, fontSize: 11.sp, color: Colors.white),
                          ),
                          TextSpan(
                            text: ' kabul etmiş olursunuz.',
                            style: AppTextStyles.termsText
                                .copyWith(color: Colors.white.withOpacity(0.5), fontSize: 11.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PhoneInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.white.withOpacity(0.10),
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/login/tr.svg',
                width: 16.w,
                height: 16.w,
              ),
              SizedBox(width: 5.w),
              Text(
                '+90',
                style: AppTextStyles.phonePrefix.copyWith(fontSize: 14.sp),
              ),
            ],
          ),
          SizedBox(width: 8.w),
          Opacity(
            opacity: 0.2,
            child: Container(
              width: 16.w,
              height: 1,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Opacity(
              opacity: 0.5,
              child: Text(
                'Telefon Numarası',
                style: AppTextStyles.phonePlaceholder.copyWith(fontSize: 14.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final String asset;
  const _SocialIcon({required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.w,
      height: 36.w,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset(asset, width: 20.w, height: 20.w, fit: BoxFit.contain),
    );
  }
}
