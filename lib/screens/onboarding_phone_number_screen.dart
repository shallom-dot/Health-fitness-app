import 'package:flutter/material.dart';
import 'package:health_fitness_app/Screens/otp_screen.dart';

class PhoneNumberSignInScreen extends StatelessWidget {
  const PhoneNumberSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0,
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          title: const Text(
            'Create Account',
            style: TextStyle(
              fontFamily: 'Inter-Medium',
              fontSize: 16,
              color: Color(0xFF161616),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Phone Number Verification',
                    style: TextStyle(
                      fontFamily: 'Inter-SemiBold',
                      fontSize: 24,
                      color: Color(0xFF161616),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Enter your phone number to proceed with login. A verification code will be sent.',
                    style: TextStyle(
                      fontFamily: 'Inter-Regular',
                      fontSize: 16,
                      color: Color(0xFF767676),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(children: [
                    const Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'Name',
                          style: TextStyle(
                              fontFamily: 'Inter-Medium',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              height: 2,
                              color: Color(0xFF3D3D3D)),
                        )),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter Your Full Name',
                          hintStyle: const TextStyle(
                              fontFamily: 'Inter-Regular',
                              fontSize: 16,
                              height: 2,
                              color: Color(0xFFD9D9D9)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide:
                                  const BorderSide(color: Color(0xFFD9D9D9))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          'Phone Number',
                          style: TextStyle(
                              fontFamily: 'Inter-Medium',
                              fontSize: 14,
                              height: 2,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF3D3D3D)),
                        )),
                    Stack(
                      children: [
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: '',
                              hintStyle: const TextStyle(
                                fontFamily: 'Inter-Regular',
                                fontSize: 16,
                                height: 2,
                                color: Color(0xFFD9D9D9),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Color(0xFFD9D9D9)),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 24,
                          // top: 12,
                          child: RichText(
                            text: const TextSpan(
                              text: '+91 ',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter-Regular',
                                fontSize: 16,
                                height: 2,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Enter Your Phone Number',
                                  style: TextStyle(
                                    color: Color(0xFFD9D9D9),
                                    fontFamily: 'Inter-Regular',
                                    fontSize: 16,
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Please enter active phone number',
                        style: TextStyle(
                          color: Color(0xFF767676),
                          fontFamily: 'Inter-Regular',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 2,
                        ),
                      ),
                    )
                  ]),
                  const SizedBox(height: 20,),
                   Center(
            child: Container(
               width: double.infinity,
              child: ElevatedButton(
                
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OTPVerificationScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0033EC),// Set the background color to white
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Continue',
                 style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: 'Inter-Medium',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Align(
            alignment: Alignment.topLeft,
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'By clicking, I agree the ',
                     style: TextStyle(
                          color: Color(0xFF767676),
                          fontFamily: 'Inter-Medium',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 2,
                        ),
                  ),
                  TextSpan(
                    text: 'Terms & Conditions',
                    style: TextStyle(
                          color: Color(0xFFF16038),
                          fontFamily: 'Inter-Medium',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 2,
                        ),
                  ),
                  TextSpan(
                    text: ' and ',
                  style: TextStyle(
                          color: Color(0xFF767676),
                          fontFamily: 'Inter-Medium',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 2,
                        ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy.',
                   style: TextStyle(
                          color: Color(0xFFF16038),
                          fontFamily: 'Inter-Medium',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 2,
                        ),
                  ),
                ],
              ),
              ))]),
          )),
        ));
  }
}
