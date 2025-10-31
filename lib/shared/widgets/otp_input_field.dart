import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../design/tokens/app_colors.dart';
import '../../design/tokens/app_typography.dart';

/// OTP Input Field Widget
/// 6-digit OTP input with auto-focus
class OtpInputField extends StatefulWidget {
  final int length;
  final ValueChanged<String>? onCompleted;
  final ValueChanged<String>? onChanged;

  const OtpInputField({
    super.key,
    this.length = 6,
    this.onCompleted,
    this.onChanged,
  });

  @override
  State<OtpInputField> createState() => _OtpInputFieldState();
}

class _OtpInputFieldState extends State<OtpInputField> {
  final List<TextEditingController> _controllers = [];
  final List<FocusNode> _focusNodes = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.length; i++) {
      _controllers.add(TextEditingController());
      _focusNodes.add(FocusNode());
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty && index < widget.length - 1) {
      _focusNodes[index + 1].requestFocus();
    }
    _updateOTP();
  }

  void _onBackspace(String value, int index) {
    if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
      _controllers[index - 1].clear();
    }
    _updateOTP();
  }

  void _updateOTP() {
    final otp = _controllers.map((c) => c.text).join();
    widget.onChanged?.call(otp);
    
    if (otp.length == widget.length) {
      widget.onCompleted?.call(otp);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final unfocusedBorderColor = const Color(0x338390A1);
    final focusedBorderColor = const Color(0xFFFF1B62);
    final textColor = isDark ? AppDarkColors.textPrimary : AppColors.textPrimary;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        widget.length,
        (index) {
          final hasFocus = _focusNodes[index].hasFocus || _controllers[index].text.isNotEmpty;
          final borderColor = hasFocus ? focusedBorderColor : unfocusedBorderColor;
          final bgColor = hasFocus ? const Color(0x04FF1C62) : Colors.transparent;
          
          return Container(
            width: 60,
            height: 60,
            decoration: ShapeDecoration(
              color: bgColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: borderColor,
                ),
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            child: TextField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              maxLength: 1,
              style: AppTypography.h3.copyWith(
                color: textColor,
                fontWeight: AppTypography.medium,
              ),
              decoration: const InputDecoration(
                counterText: '',
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              onChanged: (value) => _onChanged(value, index),
              onSubmitted: (value) {
                if (value.isEmpty && index > 0) {
                  _onBackspace(value, index);
                }
              },
            ),
          );
        },
      ),
    );
  }
}

