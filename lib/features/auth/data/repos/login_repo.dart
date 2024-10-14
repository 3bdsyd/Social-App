import 'package:social_app/core/utils/app_import.dart';

abstract class LoginRepo {
  // The actual implementation is provided by the class that implements this abstract class.
  Future postLogin(String username, String password);
}

class LoginRepoImp extends LoginRepo {
  // This method posts the login data (username and password) to the server.
  @override
  Future postLogin(String username, String password) async {
    try {
      // The request sends the username and password in the body to the login endpoint.
      final result = await Crud().post(
        url: AppApi.login,
        body: {
          'username': username,
          'password': password,
        },
      );

      return result.fold(
        (failure) => failure,
        (login) => LoginModel.fromJson(login),
      );
    } catch (_) {
      return Failures(errMessage: 'An error occurred, try again');
    }
  }
}
