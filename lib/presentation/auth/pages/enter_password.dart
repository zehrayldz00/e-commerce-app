import 'package:ecommerceapp/common/helper/navigator/app_navigator.dart';
import 'package:ecommerceapp/common/widgets/appbar/basic_app_bar.dart';
import 'package:ecommerceapp/common/widgets/button/basic_app_button.dart';
import 'package:ecommerceapp/presentation/auth/pages/forgot_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            _continueButton(),
            const SizedBox(height: 20),
            _forgotPasswordText(context),
          ],
        ),
      ),
    );
  }

  Widget _signinText() {
    return const Text(
      'Sign in',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Enter Password'),
    );
  }

  Widget _continueButton() {
    return BasicAppButton(onPressed: () {}, title: 'Continue');
  }

  Widget _forgotPasswordText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'Forgot password? '),
          TextSpan(text: 'Reset', recognizer:TapGestureRecognizer()..onTap =(){
            AppNavigator.push(context, const ForgotPasswordPage());
          } , style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
