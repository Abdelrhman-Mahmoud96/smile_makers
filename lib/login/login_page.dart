import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smile_makers/firebase/authentication_repository.dart';
import 'package:smile_makers/login/login_cubit.dart';
import 'package:smile_makers/login/login_form.dart';

/*The LoginPage is responsible for creating and providing an instance of
 LoginCubit to the LoginForm*/

class LoginPage extends StatelessWidget {

  const LoginPage({Key? key}): super(key: key);
  static Page page() => const MaterialPage<void>(child: LoginPage());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/login_bg.png'),fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: const Text ('Login'),),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocProvider(
            create: (_) => LoginCubit(context.read<AuthRepository>()),
            child: const LoginForm(),
          ),

        ),
      ),
    );
  }
}
