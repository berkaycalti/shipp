import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shipp/constants/colors.dart';
import 'package:shipp/constants/text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        title: Text("Profil", style: AppTextStyles.heading.copyWith(fontSize: 20.sp)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profil Fotoğrafı
            CircleAvatar(
              radius: 50.r,
              backgroundImage: const AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(height: 16.h),

            // Kullanıcı Adı
            Text(
              "Berkay Çaltı",
              style: AppTextStyles.heading.copyWith(fontSize: 22.sp),
            ),
            SizedBox(height: 4.h),
            Text(
              "berkay@example.com",
              style: AppTextStyles.subheading.copyWith(fontSize: 14.sp),
            ),
            SizedBox(height: 24.h),

            // Profil Bilgileri Kartları
            _buildProfileCard(Icons.person, "Hakkımda", "Kendini tanıt..."),
            _buildProfileCard(Icons.cake, "Doğum Tarihi", "01 Ocak 1990"),
            _buildProfileCard(Icons.location_on, "Konum", "İstanbul, Türkiye"),
            _buildProfileCard(Icons.settings, "Ayarlar", "Profil ayarlarını yönet"),

            SizedBox(height: 30.h),

            // Çıkış Butonu
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
                  // TODO: Çıkış işlemleri
                },
                child: Text("Çıkış Yap", style: TextStyle(color: Colors.white, fontSize: 16.sp)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard(IconData icon, String title, String subtitle) {
    return Card(
      color: Colors.white.withOpacity(0.05),
      margin: EdgeInsets.only(bottom: 12.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: ListTile(
        leading: Icon(icon, color: AppColors.primary),
        title: Text(title, style: AppTextStyles.heading.copyWith(fontSize: 16.sp)),
        subtitle: Text(subtitle, style: AppTextStyles.subheading.copyWith(fontSize: 14.sp)),
        onTap: () {
          // TODO: Her kartın kendi sayfasına yönlendirme
        },
      ),
    );
  }
}
