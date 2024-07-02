import 'package:flutter/material.dart';
import 'package:health_fitness_app/Screens/onboarding_phone_number_screen.dart';
import 'package:health_fitness_app/widgets/onboarding_reusable_buttons.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(children: [
          // image container
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Image.asset('assets/images/image 2.png'),
          ),
          //Text container
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome to our Health & ',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const Center(
                    child: Text(
                      'Fitness Marketplace!',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: RichText(
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          height: 1.25,
                          fontFamily: 'Inter',
                          fontSize: 16,
                          color: Color(0xFF767676),
                          fontWeight: FontWeight.w300,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Unlock the power of personalization',
                          ),
                          TextSpan(
                            text: ' with our AI-driven recommendations',
                          ),
                          TextSpan(
                            text: ' tailored to you.',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  OnboardingReUsableButtons(
                      text: 'Continue with Google',
                     // spacing: 70,
                      url: 'assets/images/image 3.png',
                      press: () {}),
                  const SizedBox(
                    height: 15,
                  ),
                  //apple sign in button
                  OnboardingReUsableButtons(
                      text: 'Continue with Apple',
                      url: 'assets/images/image 4.png',
                      press: () {}),
                  const SizedBox(
                    height: 15,
                  ),
                  //phone number sign in button

// Button with text only
                  OnboardingReUsableButtons(
                    text: 'Log In with Phone Number',
                    press: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const PhoneNumberSignInScreen())));
                    },
                  ),
 const SizedBox(
                    height: 15,
                  ),
                  OnboardingReUsableButtons(
                    text: 'Create Account',
                    press: () {
                      
                    },
                    color: const Color(0xFF0033EC),
                    textColor: Colors.white,
                  ),

                ],
              ))
        ]),
      ),
    ));
  }
}
