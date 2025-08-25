import 'package:ecommerceapp/common/helper/navigator/app_navigator.dart';
import 'package:ecommerceapp/common/widgets/appbar/basic_app_bar.dart';
import 'package:ecommerceapp/common/widgets/button/basic_app_button.dart';
import 'package:ecommerceapp/presentation/auth/pages/enter_password.dart';
import 'package:ecommerceapp/presentation/auth/pages/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signupText(),
            const SizedBox(height: 20),
            _nameField(),
            const SizedBox(height: 20),
            _lastNameField(),
            const SizedBox(height: 20),
            _emailField(),
            const SizedBox(height: 20),
            _passwordField(),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _createAccountText(context),
          ],
        ),
      ),
    );
  }

  Widget _signupText() {
    return const Text(
      'Sign up',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _nameField() {
    return const TextField(
      decoration: InputDecoration(hintText: 'Firstname'),
    );
  }

  Widget _lastNameField() {
    return const TextField(
      decoration: InputDecoration(hintText: 'Lastname'),
    );
  }

  Widget _emailField() {
    return const TextField(
      decoration: InputDecoration(hintText: 'Email'),
    );
  }

  Widget _passwordField() {
    return const TextField(
      decoration: InputDecoration(hintText: 'Password'),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
        onPressed:(){
          AppNavigator.push(context, const EnterPasswordPage());
        },
        title: 'Continue');
  }

  Widget _createAccountText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'Already have an account? '),
          TextSpan(text: 'Sign in!', recognizer:TapGestureRecognizer()..onTap =(){
            AppNavigator.pushReplacement(context, const SigninPage());
          } , style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
