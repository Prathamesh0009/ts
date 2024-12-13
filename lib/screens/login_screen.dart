import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ts/constants/styles.dart';
import 'package:ts/screens/create_account_screen.dart';
import 'package:ts/screens/landing_screen.dart';
import 'package:ts/widgets/custom_button.dart';
import 'package:ts/widgets/password_input_field.dart';
import 'package:ts/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login to your account.',
              style: AppStyles.screenTitleText,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),
            const TextInputField(
              label: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),
            const PasswordInputField(),
            const SizedBox(height: 24.0),
            CustomButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LandingScreen(),),);
              },
              label: 'Login',
              isLoading: false, // Example; adjust as needed
            ),
            const SizedBox(height: 16.0),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account yet? ",
                  style: AppStyles.greyText,
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: AppStyles.blueText,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CreateAccountScreen(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
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
