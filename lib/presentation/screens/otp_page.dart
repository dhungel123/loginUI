import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Image.asset('assets/otp.jpg'),
          Text('Enter OTP',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
          SizedBox(height: 12,),
          Text('An 4 digit code has been sent to $')
          

        ],
      ),
    );
  }
}
