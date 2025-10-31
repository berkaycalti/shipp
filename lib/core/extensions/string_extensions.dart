/// String Extensions
extension StringExtensions on String {
  /// Capitalize first letter
  String capitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  /// Capitalize each word
  String capitalizeWords() {
    return split(' ').map((word) => word.capitalize()).join(' ');
  }

  /// Check if string is a valid email
  bool isValidEmail() {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(this);
  }

  /// Check if string is a valid phone number
  bool isValidPhone() {
    final phoneRegex = RegExp(r'^\+?[1-9]\d{1,14}$');
    final digitsOnly = replaceAll(RegExp(r'\D'), '');
    return phoneRegex.hasMatch(digitsOnly);
  }

  /// Remove all whitespace
  String removeWhitespace() {
    return replaceAll(RegExp(r'\s+'), '');
  }

  /// Truncate string with ellipsis
  String truncate(int maxLength, {String ellipsis = '...'}) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength)}$ellipsis';
  }

  /// Mask email (e.g., "user@example.com" -> "u***@example.com")
  String maskEmail() {
    if (!isValidEmail()) return this;
    final parts = split('@');
    if (parts.length != 2) return this;
    
    final username = parts[0];
    final domain = parts[1];
    
    if (username.length <= 2) {
      return '${username[0]}***@$domain';
    }
    
    return '${username[0]}${'*' * (username.length - 2)}${username[username.length - 1]}@$domain';
  }

  /// Mask phone number (e.g., "+905551234567" -> "+90555***4567")
  String maskPhone() {
    final digitsOnly = replaceAll(RegExp(r'\D'), '');
    if (digitsOnly.length < 4) return this;
    
    final visibleDigits = 4;
    final start = substring(0, length - visibleDigits);
    final end = substring(length - visibleDigits);
    
    return '${start.replaceAll(RegExp(r'.'), '*')}$end';
  }
}

