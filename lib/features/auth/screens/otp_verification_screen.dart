import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_routes.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_typography.dart';
import '../../../design/tokens/app_border_radius.dart';
import '../../../design/tokens/app_spacing.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/otp_input_field.dart';

/// OTP Verification Screen
/// Phone number verification with 4-digit OTP
class OtpVerificationScreen extends StatefulWidget {
  final String? phoneNumber;
  
  const OtpVerificationScreen({
    super.key,
    this.phoneNumber,
  });

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  bool _isLoading = false;
  int _countdown = 59;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _canResend = false;
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          if (_countdown > 0) {
            _countdown--;
            _startCountdown();
          } else {
            _canResend = true;
          }
        });
      }
    });
  }

  void _handleOtpChanged(String otp) {
    if (otp.length == 4) {
      _handleVerify();
    }
  }

  void _handleOtpCompleted(String otp) {
    _handleVerify();
  }

  Future<void> _handleVerify() async {
    setState(() => _isLoading = true);
    
    // TODO: Implement OTP verification API call
    await Future.delayed(const Duration(seconds: 1));
    
    if (mounted) {
      setState(() => _isLoading = false);
      // Navigate to name input (first step of account creation)
      context.go(AppRoutes.createAccountName);
    }
  }

  Future<void> _handleResend() async {
    if (!_canResend) return;
    
    // TODO: Implement resend OTP API call
    setState(() {
      _countdown = 59;
      _canResend = false;
    });
    _startCountdown();
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
                  Icons.phone_android,
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
                      Colors.black.withValues(alpha: 0),
                    ],
                  ),
                  borderRadius: AppBorderRadius.medium,
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.10),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Back button
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    
                    const SizedBox(height: AppSpacing.xl),
                    
                    // Title and description
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Telefon Doğrulaması',
                          style: AppTypography.h3.copyWith(
                            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                            fontWeight: AppTypography.semibold,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Hesabını doğrulamak için e-posta adresine gönderdiğimiz 4 haneli kodu gir.',
                            style: AppTypography.bodyMedium.copyWith(
                              color: isDark ? AppDarkColors.textSecondary : AppColors.textSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: AppSpacing.xl),
                    
                    // OTP Input (4 digits)
                    Center(
                      child: OtpInputField(
                        length: 4,
                        onChanged: _handleOtpChanged,
                        onCompleted: _handleOtpCompleted,
                      ),
                    ),
                    
                    const SizedBox(height: AppSpacing.xl * 2),
                    
                    // Verify button
                    AppButton(
                      label: 'Doğrula',
                      onPressed: _isLoading ? null : _handleVerify,
                      fullWidth: true,
                      isLoading: _isLoading,
                    ),
                    
                    const SizedBox(height: AppSpacing.xl),
                    
                    // Resend OTP section
                    Column(
                      children: [
                        if (_countdown > 0)
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Tekrar gönderme için kalan süre: ',
                                  style: AppTypography.bodyMedium.copyWith(
                                    color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
                                  ),
                                ),
                                TextSpan(
                                  text: '${_countdown}s',
                                  style: AppTypography.bodyMedium.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: AppTypography.medium,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        const SizedBox(height: AppSpacing.sm),
                        GestureDetector(
                          onTap: _canResend ? _handleResend : null,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Kodu almadın mı? ',
                                  style: AppTypography.caption.copyWith(
                                    color: isDark ? AppDarkColors.textTertiary : AppColors.textTertiary,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Tekrar gönder',
                                  style: AppTypography.caption.copyWith(
                                    color: _canResend
                                        ? AppColors.primary
                                        : (isDark ? AppDarkColors.textTertiary : AppColors.textTertiary),
                                    fontWeight: AppTypography.medium,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

