import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/signup/sign_up_cubit.dart';
import 'package:formz/formz.dart';

class SignUpForm extends StatelessWidget {

  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
        listener: (context, state){
          if(state.status!.isSubmissionSuccess){
            Navigator.of(context).pop();
          } else if (state.status!.isSubmissionFailure){
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text(state.errorMessage!.toString().replaceAll('-'," "))));
          }
        },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child:_NameInput(),),
              const SizedBox(height: 8.0),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child:_EmailInput(),),
              const SizedBox(height: 8.0),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child:_PasswordInput(),),
              const SizedBox(height: 8.0),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child:_ConfirmPasswordInput(),),
              const SizedBox(height: 8.0),
              _SignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
        buildWhen: (previous, current) => previous.name != current.name,
        builder: (context, state){
          return TextField(
            key: const Key('signUpForm_nameInput_textField'),
            onChanged: (value) => context.read<SignUpCubit>().nameChanged(value),
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'name',
              helperText: '',
              errorText: state.name!.invalid ? 'name can\'t have spaces, be less than 6 characters or contains special characters' : null,
              errorMaxLines: 2
            ),
          );
        }
    );
  }
}


class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state){
          return TextField(
            key: const Key('signUpForm_emailInput_textField'),
            onChanged: (value) => context.read<SignUpCubit>().emailChanged(value),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'email',
              helperText: '',
              errorText: state.email!.invalid ? 'invalid email' : null,
            ),
          );
        }
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state){
          return TextField(
            key: const Key('signUpForm_passwordInput_textField'),
            onChanged: (value) => context.read<SignUpCubit>().passwordChanged(value),
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'password',
              helperText: '',
              errorText: state.password!.invalid ? 'password must be 8 or more and contains letters' : null,
            ),
          );
        }
    );
  }
}

class _ConfirmPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
        buildWhen: (previous, current) => previous.confirmedPassword != current.confirmedPassword
        || previous.password != current.password,
        builder: (context, state){
          return TextField(
            key: const Key('signUpForm_confirmPasswordInput_textField'),
            onChanged: (value) => context.read<SignUpCubit>().confirmedPasswordChanged(value),
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'confirm password',
              helperText: '',
              errorText: state.confirmedPassword!.invalid ? 'password do not match' : null,
            ),
          );
        }
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          return state.status!.isSubmissionInProgress
              ? CircularProgressIndicator()
              : SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    key: const Key('signUpForm_continue_raisedButton'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      primary: SmileColors.smileYellow,
                    ),
                    onPressed: state.status!.isValid
                        ? () => context.read<SignUpCubit>().signUpFormSubmitted()
                        : null,
                    child: const Text('SIGN UP', style: TextStyle(
                      color: SmileColors.smileLightPaige
                    ),),
                  )
          );
        }
    );
  }
}



