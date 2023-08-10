
import 'package:flutter/material.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        padding: EdgeInsets.only(left: 24,right: 24),
        children: [
          Image.asset('assets/otp.jpg'),
          Text('Enter OTP',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
          SizedBox(height: 12,),
          Text('An 4 digit code has been sent to',style: TextStyle(fontSize: 20),),
          Text('+977 9824001743',style: TextStyle(fontSize: 20),),
          

        ],
      ),
    );
  }
}
