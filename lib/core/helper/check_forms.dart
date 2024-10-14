import 'package:social_app/core/utils/app_regular_expressions.dart';

class CheckForms {
  // Method to validate a username using a regular expression
  static bool checkUsernameRegex(String value) {
    // Creates a regex using a pattern defined in AppRegularExpressions.usernameRegExp
    final regex = RegExp(
      AppRegularExpressions.usernameRegExp, // Pattern to validate usernames
      caseSensitive: false, // Case insensitive matching
    );
    // Checks if the provided username matches the regular expression
    return regex.hasMatch(value);
  }

  // Method to validate a password using a regular expression
  static bool checkPasswordRegex(String value) {
    // Creates a regex using a pattern defined in AppRegularExpressions.passwordRegExp
    final regex = RegExp(
      AppRegularExpressions.passwordRegExp, // Pattern to validate passwords
      caseSensitive: false, // Case insensitive matching
    );
    // Checks if the provided password matches the regular expression
    return regex.hasMatch(value);
  }

  // Method to check if a value (String) is not empty
  static bool checkEmpty(String value) {
    // Returns false if the value is empty, otherwise true
    if (value.isEmpty) return false;
    return true;
  }
}
