import 'package:flutter/material.dart';
import 'package:ts/constants/styles.dart';
import 'package:ts/widgets/custom_button.dart';
import 'package:ts/widgets/password_input_field.dart';
import 'package:ts/widgets/text_input_field.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create Account.',
              style: AppStyles.screenTitleText,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),
            const TextInputField(
              label: 'Full name',
            ),
            const SizedBox(height: 16.0),
            const TextInputField(
              label: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),
            const PasswordInputField(),
            const SizedBox(height: 24.0),
            CustomButton(
              onPressed: () {
                // Handle sign-up logic here
              },
              label: 'Sign Up',
              isLoading: false, // Replace with actual state management if needed
            ),
            const SizedBox(height: 32.0),
            const Text(
              'thoughtsketch',
              style: AppStyles.subtitleText,
            ),
          ],
        ),
      ),
    );
  }
}
