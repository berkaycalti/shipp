import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_routes.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../core/utils/validators.dart';
import '../../../shared/widgets/app_button.dart';

/// Login Screen
/// Phone number-based login with social login options
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  bool _isLoading = false;
  String? _errorText;

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) {
      setState(() {
        _errorText = 'Girilen Telefon numarası eksik veya hatalı!';
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _errorText = null;
    });

    // TODO: Implement phone number login API call
    // Send OTP to phone number
    await Future.delayed(const Duration(seconds: 1));

    if (mounted) {
      setState(() => _isLoading = false);
      // Navigate to OTP verification
      context.push(
        '${AppRoutes.otpVerification}?phone=${Uri.encodeComponent(_phoneController.text)}',
      );
    }
  }

  void _handleGoogleLogin() {
    // TODO: Implement Google Sign-In
  }

  void _handleAppleLogin() {
    // TODO: Implement Apple Sign-In
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = isDark ? AppDarkColors.background : AppColors.background;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: AppSpacing.xl * 2),
                
                // Logo placeholder
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: isDark ? AppDarkColors.border : AppColors.border,
                    borderRadius: AppBorderRadius.medium,
                  ),
                  child: Icon(
                    Icons.favorite,
                    size: 60,
                    color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                  ),
                ),
                
                const SizedBox(height: AppSpacing.xl),
                
                // Card container
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.87, 1.00),
                      end: Alignment(0.00, 0.61),
                      colors: [
                        const Color(0x4FBFBFBF),
                        Colors.black.withOpacity(0),
                      ],
                    ),
                    borderRadius: AppBorderRadius.medium,
                    border: Border.all(
                      color: Colors.white.withOpacity(0.10),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title and subtitle
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Giriş Yap',
                            style: AppTypography.h3.copyWith(
                              color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                              fontWeight: AppTypography.semibold,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Text(
                            'Hoşgeldin! Seni görmek güzel',
                            style: AppTypography.bodyMedium.copyWith(
                              color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: AppSpacing.xl),
                      
                      // Phone number input
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 48,
                            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: _errorText != null
                                    ? AppColors.error
                                    : (isDark ? AppDarkColors.border : AppColors.border),
                                width: 1,
                              ),
                              borderRadius: AppBorderRadius.small,
                            ),
                            child: Row(
                              children: [
                                // Country code selector (+90)
                                Row(
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 16,
                                      decoration: BoxDecoration(
                                        color: isDark ? AppDarkColors.border : AppColors.border,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(width: AppSpacing.xs),
                                    Text(
                                      '+90',
                                      style: AppTypography.bodyMedium.copyWith(
                                        color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                                      ),
                                    ),
                                    const SizedBox(width: AppSpacing.sm),
                                    Container(
                                      width: 1,
                                      height: 16,
                                      color: isDark ? AppDarkColors.border : AppColors.border,
                                    ),
                                  ],
                                ),
                                const SizedBox(width: AppSpacing.md),
                                // Phone number input
                                Expanded(
                                  child: TextFormField(
                                    controller: _phoneController,
                                    keyboardType: TextInputType.phone,
                                    style: AppTypography.bodyMedium.copyWith(
                                      color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: 'Telefon Numarası',
                                      hintStyle: AppTypography.bodyMedium.copyWith(
                                        color: isDark ? AppDarkColors.textTertiary : AppColors.textTertiary,
                                      ),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                    validator: (value) {
                                      if (_errorText != null) {
                                        return null; // Error shown below
                                      }
                                      return Validators.phoneNumber(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (_errorText != null)
                            Padding(
                              padding: const EdgeInsets.only(top: AppSpacing.xs),
                              child: Text(
                                _errorText!,
                                textAlign: TextAlign.right,
                                style: AppTypography.caption.copyWith(
                                  color: AppColors.error,
                                ),
                              ),
                            ),
                        ],
                      ),
                      
                      const SizedBox(height: AppSpacing.xl),
                      
                      // Login button
                      AppButton(
                        label: 'Giriş Yap',
                        onPressed: _isLoading ? null : _handleLogin,
                        fullWidth: true,
                        isLoading: _isLoading,
                      ),
                      
                      const SizedBox(height: AppSpacing.xl),
                      
                      // Divider with "VEYA"
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: isDark ? AppDarkColors.border : AppColors.border,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
                            child: Opacity(
                              opacity: 0.7,
                              child: Text(
                                'VEYA',
                                style: AppTypography.caption.copyWith(
                                  color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                                  fontWeight: AppTypography.medium,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: isDark ? AppDarkColors.border : AppColors.border,
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: AppSpacing.xl),
                      
                      // Social login buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Google
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: _handleGoogleLogin,
                              icon: const Icon(Icons.g_mobiledata),
                              iconSize: 24,
                            ),
                          ),
                          const SizedBox(width: AppSpacing.xl),
                          // Apple
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: _handleAppleLogin,
                              icon: const Icon(Icons.apple),
                              iconSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: AppSpacing.xl),
                
                // Terms and Privacy
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Katılarak, ',
                          style: AppTypography.caption.copyWith(
                            color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                          ),
                        ),
                        TextSpan(
                          text: 'Şartlar ve Gizlilik Politikamızı ',
                          style: AppTypography.caption.copyWith(
                            color: AppColors.primary,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: 'kabul etmiş olursunuz.',
                          style: AppTypography.caption.copyWith(
                            color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                
                const SizedBox(height: AppSpacing.xl),
                
                // "Hesabınız var mı, Giriş Yap?" link
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hesabınız var mı, ',
                        style: AppTypography.bodySmall.copyWith(
                          color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                        ),
                      ),
                      TextSpan(
                        text: 'Giriş Yap?',
                        style: AppTypography.bodySmall.copyWith(
                          color: AppColors.primary,
                          fontWeight: AppTypography.medium,
                        ),
                      ),
                    ],
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
