import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smile_makers/firebase/authentication_repository.dart';
import 'package:smile_makers/forms/confiremed_password.dart';
import 'package:smile_makers/forms/email_formz.dart';
import 'package:smile_makers/forms/name_formz.dart';
import 'package:smile_makers/forms/password_formz.dart';


part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {

  final AuthRepository _authRepository;

  SignUpCubit(this._authRepository) : super(SignUpState.copyWith(
      name: Name.pure(),
      email: Email.pure(),
      password: Password.pure(),
      confirmedPassword: ConfirmedPassword.pure(),
      status: FormzStatus.pure));

  void nameChanged(String value){
    final name = Name.dirty(value);
    emit(state.copyWith(
      name: name,
      status: Formz.validate([
        name,
        state.email!,
        state.password!,
        state.confirmedPassword!
      ])
    ));
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      status: Formz.validate([
        state.name!,
        email,
        state.password!,
        state.confirmedPassword!,
      ]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    final confirmedPassword = ConfirmedPassword.dirty(
        password: password.value,
        value: state.confirmedPassword!.value
    );
    emit(state.copyWith(
      password: password,
      confirmedPassword: confirmedPassword,
      status: Formz.validate([
        state.name!,
        state.email!,
        password,
        state.confirmedPassword!
      ])
    ));
  }

  void confirmedPasswordChanged(String value) {
    final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password!.value,
      value: value,
    );
    emit(state.copyWith(
      confirmedPassword: confirmedPassword,
      status: Formz.validate([
        state.name!,
        state.email!,
        state.password!,
        confirmedPassword,
      ]),
    ));
  }

  Future<void> signUpFormSubmitted() async{
    if(!state.status!.isValid) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try{
      await _authRepository.signUp(name:state.name!.value, email: state.email!.value, password: state.password!.value);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    }on FirebaseAuthException catch(error){
        emit(state.copyWith(status: FormzStatus.submissionFailure, errorMessage: error.code));
    }
  }
}
