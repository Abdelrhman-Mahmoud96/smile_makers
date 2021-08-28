import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smile_makers/firebase/authentication_repository.dart';
import 'package:smile_makers/signup/sign_up_cubit.dart';
import 'package:smile_makers/signup/sign_up_form.dart';

class SignUpPage extends StatelessWidget {

  const SignUpPage({Key? key}) : super(key: key);

  static Route route(){
    return MaterialPageRoute(builder: (_) => const SignUpPage());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/login_bg.png'),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: const Text('Sign Up')),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: BlocProvider<SignUpCubit>(
            create: (_) => SignUpCubit(context.read<AuthRepository>()),
            child: const SignUpForm(),
          ),
        ),
      ),
    );
  }
}
