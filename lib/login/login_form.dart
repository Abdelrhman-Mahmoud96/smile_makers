import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:smile_makers/design/smile_colors.dart';
import 'package:smile_makers/login/login_cubit.dart';
import 'package:smile_makers/signup/sign_up_page.dart';

/*The LoginForm is a responsible for rendering the form in response
 to the LoginState and invokes methods of the LoginCubit in response
 to user interactions.*/

class LoginForm extends StatelessWidget {

  const LoginForm({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listener: (context, state){
            if(state.status!.isSubmissionFailure){
              ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                      SnackBar(content: Text(state.errorMessage.toString().replaceAll('-', ' ')))
                 );
            }
        },

        child: Align(
          alignment: const Alignment(0, -1/3),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16.0),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: _EmailInput(),),
                const SizedBox(height: 8.0),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child:_PasswordInput()),
                const SizedBox(height: 8.0),
                _LoginButton(),
                const SizedBox(height: 8.0),
                _GoogleLoginButton(),
                const SizedBox(height: 4.0),
                _SignUpButton(),
              ],
            ),
          ),
        ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state){
        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'email',
            helperText: '',
            errorText: state.email!.invalid ? 'invalid email': null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state){
          return TextField(
            key: const Key('loginForm_passwordInput_textField'),
            onChanged: (password) => context.read<LoginCubit>().passwordChanged(password),
            obscureText: true, // to hide edited password with '*'
            decoration: InputDecoration(
              labelText: 'password',
              helperText: '',
              errorText: state.password!.invalid ? 'password must be 8 or more characters' : null
            ),
          );
        }
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state){
          return state.status!.isSubmissionInProgress ? const CircularProgressIndicator()
              : SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    key: const Key('loginForm_continue_raisedButton'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                      primary: SmileColors.smileYellow,
                    ),
                    onPressed: state.status!.isValid
                        ? () => context.read<LoginCubit>().loginWithCredential()
                        : null,
                    child: const Text('LOGIN')
            ),
          );
        }
    );
  }
}

class _GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton.icon(
      key: const Key('loginForm_googleLogin_raisedButton'),
      label: const Text(
        'SIGN IN WITH GOOGLE',
        style: TextStyle(color: SmileColors.smileLightPaige),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        primary: SmileColors.smileBlue,
      ),
      icon: const Icon(FontAwesomeIcons.google, color: SmileColors.smileLightPaige),
      onPressed: () => context.read<LoginCubit>().loginWithGoogle(),
    );
  }

}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      key: const Key('loginForm_createAccount_flatButton'),
      onPressed: () => Navigator.of(context).push<void>(SignUpPage.route()),
      child: Text(
        'CREATE ACCOUNT',
        style: TextStyle(color: theme.primaryColor),
      ),
    );
  }
}





