import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royal_class/presentation/auth/bloc/auth_bloc.dart';
import 'package:royal_class/presentation/auth/login_screen.dart';
import 'package:royal_class/presentation/core/color_constants.dart';
import 'package:royal_class/presentation/core/widget/decorations.dart';
import 'package:royal_class/presentation/core/widget/texttheme.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/SignUpscren';
  SignUpScreen({super.key});
  final nameController = TextEditingController();
  final phoneNumController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final TextTheme textStyle = TextthemeConstants.textTheme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: ColorConstants.kBorderColor,
                  strokeWidth: 5,
                ));
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Center(
                        child: Text('Great to see you here 🤝',
                            style: textStyle.displayLarge)),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                      child: Text(
                        'Full Name',
                        style: textStyle.displaySmall,
                      )),
                  SizedBox(
                    height: 50,
                    child: TextField(
                        controller: nameController,
                        decoration: kTextFieldBoxDecoratioin.copyWith(
                            hintText: 'Jhon Dave')),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 6),
                      child:
                          Text('Mobile Number', style: textStyle.displaySmall)),
                  SizedBox(
                    height: 50,
                    child: TextField(
                        controller: phoneNumController,
                        decoration: kTextFieldBoxDecoratioin.copyWith(
                            hintText: '+966')),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 6),
                      child: Text('Email', style: textStyle.displaySmall)),
                  SizedBox(
                    height: 50,
                    child: TextField(
                        controller: emailController,
                        decoration: kTextFieldBoxDecoratioin.copyWith(
                            hintText: 'Jack@gmail.com')),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 6),
                      child: Text('Password', style: textStyle.displaySmall)),
                  SizedBox(
                      height: 50,
                      child: TextField(
                          controller: passwordController,
                          decoration: kTextFieldBoxDecoratioin.copyWith(
                              hintText: 'Enter your password'),
                          obscureText: true)),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 6),
                      child: Text('Confirm Password',
                          style: textStyle.displaySmall)),
                  SizedBox(
                      height: 50,
                      child: TextField(
                          controller: confirmPasswordController,
                          decoration: kTextFieldBoxDecoratioin.copyWith(
                              hintText: 'Confirm your password'),
                          obscureText: true)),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: ElevatedButton(
                        child: const Text('Sign Up'),
                        onPressed: () {
                          BlocProvider.of<AuthBloc>(context)
                              .add(AuthEvent.signUpUser(
                            // fullName: nameController.text,
                            email: emailController.text,
                            // phoneNumber: phoneNumController.text,
                            password: passwordController.text,
                            confirmPassowrd: confirmPasswordController.text,
                          ));
                          Navigator.of(context).popAndPushNamed('newRoute');
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: 'Already have an account?',
                              style: TextStyle(color: Colors.black)),
                        ])),
                        TextButton(
                            onPressed: () => Navigator.of(context)
                                .pushNamed(LoginScreen.routeName),
                            child: const Text('Login Now',
                                style:
                                    TextStyle(color: ColorConstants.kSkyBlue)))
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
