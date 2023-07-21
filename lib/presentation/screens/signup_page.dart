
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/presentation/widgets/app_text_form_field.dart';

import '../../config/routes/paths.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        padding: EdgeInsets.only(left: 20,right: 20),
        children: [
          Image.asset('assets/sb.jpg',height: 340,),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text('Sign up',style: TextStyle(fontSize: 38,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 12,),
          AppTextFormField(
              labelName: 'Email',
            prefixIcon: Icon(Icons.alternate_email),
            
          ),
          AppTextFormField(
            labelName: 'Full Name',
            prefixIcon: Icon(Icons.man_rounded),
          ),
          AppTextFormField(labelName: 'Mobile',prefixIcon: Icon(Icons.phone),
          ),
          SizedBox(height: 12,),
          Row(
            children: [
              Text('By signing up, you are agree to our'),
              SizedBox(width: 4,),
              InkWell(
                onTap: (){

                },
                  child: Text('Terms & Conditions',style: TextStyle(color: Colors.blue),)),
            ],
          ),
          SizedBox(height: 12,),
          Row(
            children: [
              Text('and'),
              SizedBox(width: 4,),
              Text('privacy Policy',style: TextStyle(color: Colors.blue),)
            ],
          ),
          SizedBox(height: 12,),
          
          ElevatedButton(
              onPressed: (){

              }, child: Text('Continue')
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Joined us before?'),
              SizedBox(width: 4,),
              InkWell(
                onTap: (){
                  context.push(Paths.loginPage.path);
                },
                  child: Text('Login',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
            ],
          )




        ],
      )
    );
  }
}
