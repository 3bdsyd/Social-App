import 'package:social_app/core/utils/app_import.dart';

class CustomTextField extends StatelessWidget {
  final SvgGenImage prefixIcon;
  final SvgGenImage? suffixIcon;
  final Function()? suffixFunction;
  final String hintText;
  final bool? obscureText;
  final String label;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final Function(String value)? validator;
  final List<String>? autofillHints;
  final bool enabled;

  const CustomTextField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    required this.controller,
    required this.label,
    required this.enabled,
    this.obscureText,
    this.textInputType,
    this.validator,
    this.autofillHints,
    this.suffixIcon,
    this.suffixFunction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      obscureText: obscureText ?? false,
      keyboardType: textInputType,
      style: AppStyles.style14.copyWith(fontWeight: FontWeight.w500),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator != null ? (value) => validator!(value!) : null,
      controller: controller,
      autofillHints: autofillHints,
      cursorColor: ColorName.mineShaft,
      cursorOpacityAnimates: true,
      textInputAction: TextInputAction.next,
      cursorWidth: BorderSide.strokeAlignOutside,
      mouseCursor: MaterialStateMouseCursor.textable,
      cursorRadius: const Radius.circular(12),
      decoration: _inputDecoration(),
    );
  }

  InputDecoration _inputDecoration() => InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        hintFadeDuration: Durations.extralong1,
        hintStyle: AppStyles.style14,
        prefixIcon: prefixIcon.svg(fit: BoxFit.scaleDown),
        suffixIcon: suffixIcon != null
            ? InkWell(
                onTap: suffixFunction,
                child: suffixIcon?.svg(fit: BoxFit.scaleDown),
              )
            : null,
        border: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder(),
        enabledBorder: _outlineInputBorder(),
        disabledBorder: _outlineInputBorder(),
        errorBorder: _outlineInputBorder(),
        filled: true,
        fillColor: ColorName.whiteLight,
      );

  OutlineInputBorder _outlineInputBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(
          color: ColorName.mineShaft,
        ),
      );
}
