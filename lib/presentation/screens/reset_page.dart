import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/presentation/widgets/app_text_form_field.dart';

import '../../config/routes/paths.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20,right: 20),
        children: [
          Image.asset('assets/rs_bg.jpg'),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Reset',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
              Text('Password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 42),),
              SizedBox(height: 24,),
              AppTextFormField(labelName: 'New password'),
              SizedBox(height: 12,),
              AppTextFormField(labelName: 'Confirm new password'),
              SizedBox(height: 12,),

            ],
          ),

          ElevatedButton(onPressed: (){
            context.push(Paths.otpPage.path);
          }, child: Text('Sumbitting'))

        ],
      ),
    );
  }
}
