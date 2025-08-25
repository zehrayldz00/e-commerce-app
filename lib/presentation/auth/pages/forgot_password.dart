import 'package:ecommerceapp/common/helper/navigator/app_navigator.dart';
import 'package:ecommerceapp/common/widgets/appbar/basic_app_bar.dart';
import 'package:ecommerceapp/common/widgets/button/basic_app_button.dart';
import 'package:ecommerceapp/presentation/auth/pages/enter_password.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _forgotPasswordText(),
            const SizedBox(height: 20),
            _emailField(),
            const SizedBox(height: 20),
            _continueButton(context),
          ],
        ),
      ),
    );
  }

  Widget _forgotPasswordText() {
    return const Text(
      'Forgot Password',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField() {
    return const TextField(
      decoration: InputDecoration(hintText: 'Enter Email'),
    );
  }


  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
        onPressed:(){
          AppNavigator.push(context, const EnterPasswordPage());
        },
        title: 'Continue');
  }
}
