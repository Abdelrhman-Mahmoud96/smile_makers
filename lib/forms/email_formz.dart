import 'package:formz/formz.dart';

enum EmailValidatorError{invalid}

class Email extends FormzInput<String, EmailValidatorError>{

  Email.pure() : super.pure('');
  Email.dirty([String value = '']) : super.dirty(value);

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidatorError? validator(String value) {
    return _emailRegExp.hasMatch(value) ? null : EmailValidatorError.invalid;
  }

}