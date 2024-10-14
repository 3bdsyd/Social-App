class AppRegularExpressions {
  // Regular expression for validating usernames
  // - Must be 3 to 20 characters long
  // - Can include letters, numbers, dots, and underscores
  // - Cannot have two consecutive dots or underscores
  // - Must not start or end with a dot or underscore
  static const String usernameRegExp =
      r"^(?=[a-zA-Z0-9._]{3,20}$)(?!.*[_.]{2})[^_.].*[^_.]$";

  // Regular expression for validating passwords
  // - Must be at least 8 characters long
  // - Must contain at least one letter
  // - Must contain at least one digit
  // - Must contain at least one special character from the specified set
  static const String passwordRegExp =
      r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$";
}
