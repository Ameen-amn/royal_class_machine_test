import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royal_class/presentation/auth/bloc/auth_bloc.dart';
import 'package:royal_class/presentation/auth/singup_scren.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/widget/decorations.dart';
import 'package:royal_class/presentation/core/widget/texttheme.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/LoginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.isLoggedIn) {
                  () => Navigator.of(context).pushNamed('');
                }
              },
              builder: (context, state) {
                if (state.isLoading && !state.isLoaded) {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: ColorConstants.kBorderColor,
                    strokeWidth: 5,
                  ));
                }
                if (!state.isLoggedIn) {
                  return LoginFormScreen();
                }
                return const SizedBox();
              },
            ),
          ),
        ),
      ),
    );
  }
}

class LoginFormScreen extends StatelessWidget {
  LoginFormScreen({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final textTheme = TextthemeConstants.textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Center(
              child: Text('Welcome Back 👋', style: textTheme.displayLarge)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 44, 0, 6),
          child: Text(
            'Email Id',
            style: textTheme.displaySmall,
          ),
        ),
        SizedBox(
          height: 50,
          child: TextField(
            controller: emailController,
            decoration: kTextFieldBoxDecoratioin.copyWith(
              hintText: 'Jack@gmail.com',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 6),
          child: Text(
            'Password',
            style: textTheme.displaySmall,
          ),
        ),
        SizedBox(
          height: 50,
          child: TextField(
            controller: passwordController,
            decoration: kTextFieldBoxDecoratioin.copyWith(
                hintText: 'Enter your password'),
            obscureText: true,
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 45),
            child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(AuthEvent.signInUser(
                      email: emailController.text,
                      password: passwordController.text));
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: 'Doesn\'t have an account?',
                  style: TextStyle(color: Colors.black)),
            ])),
            TextButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(SignUpScreen.routeName),
                child: const Text(
                  'SignUp Now',
                  style: TextStyle(color: ColorConstants.kIndigo),
                ))
          ],
        ),
      ],
    );
  }
}
