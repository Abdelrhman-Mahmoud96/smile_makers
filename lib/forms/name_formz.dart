import 'package:formz/formz.dart';

enum NameValidatorError{invalid}

class Name extends FormzInput<String, NameValidatorError>{
  
  Name.pure() : super.pure('');
  Name.dirty([String value = '']) : super.dirty(value);

  static final RegExp _nameRegExp = RegExp(r'^[A-Za-z0-9_]{6,}$');

  @override
  NameValidatorError? validator(String value) {
    return _nameRegExp.hasMatch(value) ? null : NameValidatorError.invalid;
  }
  
}