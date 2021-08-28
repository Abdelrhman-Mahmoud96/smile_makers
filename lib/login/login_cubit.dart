import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:smile_makers/firebase/authentication_repository.dart';
import 'package:smile_makers/forms/email_formz.dart';
import 'package:smile_makers/forms/password_formz.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {

  final AuthRepository _authRepository;

  LoginCubit(this._authRepository) : super( LoginState.copyWith(email: Email.pure(), password: Password.pure(), status: FormzStatus.pure));

  void emailChanged(String value){
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      status: Formz.validate([email, state.password!]),
    ));
  }

  void passwordChanged(String value){
    final password = Password.dirty(value);
    emit(state.copyWith(
        password: password,
        status: Formz.validate([state.email!, password])
    ));
  }

  Future<void> loginWithCredential() async{
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try{
      await _authRepository.logInWithEmailAndPassword(
          email: state.email!.value,
          password: state.password!.value
      );
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    }on FirebaseAuthException catch(error){
      emit(state.copyWith(status: FormzStatus.submissionFailure, errorMessage: error.code));
    }
  }

  Future<void> loginWithGoogle() async{
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try{
      await _authRepository.logInWithGoogle();
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    }on Exception{
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }on NoSuchMethodError{
      emit(state.copyWith(status: FormzStatus.pure));
    }
  }


}
