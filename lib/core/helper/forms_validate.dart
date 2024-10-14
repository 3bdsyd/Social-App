import 'package:social_app/core/helper/check_forms.dart'; 

// A class to validate forms such as username and password
class FormsValidate {
  // Method to validate the username
  static String? getUsernameValidate(String username) {
    // Check if the username is empty; if so, return an error message
    if (!CheckForms.checkEmpty(username)) return 'Required field *';

    // Check if the username matches the required regex pattern; if not, return an error message
    if (!CheckForms.checkUsernameRegex(username)) return 'Username is invalid';

    // If all checks pass, return null indicating no validation errors
    return null;
  }

  // Method to validate the password
  static String? getPasswordValidate(String password) {
    // Check if the password is empty; if so, return an error message
    if (!CheckForms.checkEmpty(password)) return 'Required field *';

    // Check if the password length is less than 6 characters; if so, return an error message
    if (password.length < 6) {
      return 'Password is invalid';
    }

    // If all checks pass, return null indicating no validation errors
    return null;
  }
}
