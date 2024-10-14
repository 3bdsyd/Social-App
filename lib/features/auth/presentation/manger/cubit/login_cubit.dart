import 'package:social_app/core/utils/app_import.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepoImp _loginRepoImp;

  LoginCubit(this._loginRepoImp) : super(LoginInitial());

  final GlobalKey<FormState> formsKey = GlobalKey<FormState>();
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  bool isHidePassword = true;

  // Toggle password visibility
  void toggleShowPassword() {
    isHidePassword = !isHidePassword;

    emit(LoginInitial()); // returning to initial when toggling
  }

  // Handle login process
  Future<void> postLogin() async {
    if (!formsKey.currentState!.validate() || state is LoginLoading) return;

    emit(LoginLoading());
    
    final result = await _loginRepoImp.postLogin(
        username.text.trim(), password.text.trim());

    if (result is Failures) {
      scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text(result.errMessage),
        ),
      );
      emit(LoginFailure(result.errMessage));
    } else if (result is LoginModel) {
      await SharedPref.setString(AppKey.userId, result.id.toString());
      scaffoldKey.currentContext!.router.replaceAll([const HomeRoute()]);
      emit(LoginSuccess(result));
    }
  }
}
