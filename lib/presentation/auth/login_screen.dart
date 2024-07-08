import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royal_class/presentation/auth/bloc/auth_bloc.dart';
import 'package:royal_class/presentation/auth/singup_scren.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/widget/decorations.dart';
import 'package:royal_class/presentation/core/widget/texttheme.dart';
import 'package:royal_class/presentation/home_screen/home_screen.dart';

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
                  Navigator.of(context).popAndPushNamed(HomeScreen.routeName);
                }
                if (state.onError) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Failed!! Try again',
                        style: TextthemeConstants.textTheme.headlineSmall),
                    backgroundColor: ColorConstants.kRed,
                  ));
                }
              },
              builder: (context, state) {
                if (state.isLoading && !state.isLoaded) {
                  return SizedBox(
                    height: MediaQuery.sizeOf(context).height,
                    child: const Center(
                        child: CircularProgressIndicator(
                      color: ColorConstants.kSkyBlue,
                      strokeWidth: 5,
                    )),
                  );
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
          child: Text('Password', style: textTheme.displaySmall),
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
            padding: const EdgeInsets.only(top: 30, bottom: 25),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  gradient: ColorConstants.kIconGradient),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      surfaceTintColor: Colors.transparent),
                  child: Text('Login', style: textTheme.headlineLarge),
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context).add(AuthEvent.signInUser(
                        email: emailController.text,
                        password: passwordController.text));
                  }),
            ),
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
                  style: TextStyle(color: ColorConstants.kSkyBlue),
                ))
          ],
        ),
      ],
    );
  }
}
