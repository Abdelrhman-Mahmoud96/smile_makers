import 'package:formz/formz.dart';

enum PasswordValidatorError{invalid}

class Password extends FormzInput<String, PasswordValidatorError>{
  Password.pure() : super.pure('');
  Password.dirty([String value = '']) : super.dirty(value);

  static final RegExp _passwordRegExp = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  PasswordValidatorError? validator(String value) {
    return _passwordRegExp.hasMatch(value) ? null : PasswordValidatorError.invalid;

  }

}