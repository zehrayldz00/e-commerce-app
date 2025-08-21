import 'package:ecommerceapp/common/helper/navigator/app_navigator.dart';
import 'package:ecommerceapp/common/widgets/button/basic_app_button.dart';
import 'package:ecommerceapp/presentation/auth/pages/enter_password.dart';
import 'package:ecommerceapp/presentation/auth/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _createAccountText(context),
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

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'Enter Email'),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
        onPressed:(){
          AppNavigator.pushReplacement(context, const EnterPasswordPage());
        },
        title: 'Continue');
  }

  Widget _createAccountText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'Don\'t you have an account? '),
          TextSpan(text: 'Create one!', recognizer:TapGestureRecognizer()..onTap =(){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignupPage()));
          } , style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
