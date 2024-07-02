import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {

 BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: const Color(0xFFF5F5F5),
      border: Border.all(color: const Color(0xFFF5F5F5)),
      borderRadius: BorderRadius.circular(8.0),
    );
  }

TextEditingController textEditingController = TextEditingController(text: "");

  // /// get signature code
  // _getSignatureCode() async {
  //   String? signature = await SmsVerification.getAppSignature();
  //   print("signature $signature");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              const Align(
                alignment: Alignment.topLeft,
                child: Text('Verify Code ' ,
                style: TextStyle(
                        color: Color(0xFF161616),
                        fontFamily: 'Inter-Semi Bold',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),),
              ),

          // const SizedBox(height: 5,),
        Align(
          alignment: Alignment.topLeft,
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Check your SMS message. We''ve sent you the code at ',
                   style: TextStyle(
                        color: Color(0xFF767676),
                        fontFamily: 'Inter-Mixed',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),
                ),
                TextSpan(
                  text: '+91 ******* 8776',
                  style: TextStyle(
                        color: Color(0xFF3D3D3D),
                        fontFamily: 'Inter-Semi Bold',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),
                ),
              ],
            ),
            )),
               const SizedBox(height: 40,),
              TextFieldPin(
    textController: textEditingController,
    autoFocus: true,
    codeLength: 4,
    alignment: MainAxisAlignment.center,
    defaultBoxSize: 50.0,
    margin: 10,
    selectedBoxSize: 50.0,
    textStyle: const TextStyle(fontSize: 16),
    defaultDecoration: _pinPutDecoration.copyWith(
    border: Border.all(
    color: Theme.of(context)
    .primaryColor
        .withOpacity(0))),
    selectedDecoration: _pinPutDecoration,
    onChange: (code) {
      setState(() {
        
      });
    // _onOtpCallBack(code,false);
}),

  const Text('Try again in 120 sec',
  style: TextStyle(
                        color: Color(0xFF767676),
                        fontFamily: 'Inter-Regular',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),)

        
            ],
          ),
        ),
      ),
    );
  }
}