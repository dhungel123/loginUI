
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/presentation/widgets/app_text_form_field.dart';

import '../../config/routes/paths.dart';

class ForgetPassword extends StatelessWidget {
   ForgetPassword({Key? key}) : super(key: key);
   final _formKey=GlobalKey<FormState>();
  final RegExp emailValid=RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20,right: 20),

        children: [
          Image.asset('assets/fg_bg.jpg',height: 340,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Forget ',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
              Text('Password?',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
              SizedBox(height:24,),
              Text('Dont worry! It happens.Please enter the address associated with our account',style: TextStyle(fontSize: 16)),
              SizedBox(height: 24,),
              Form(
                key: _formKey,
                child: AppTextFormField(
                  labelName: 'Email id/Mobile number',
                  prefixIcon: Icon(Icons.alternate_email_rounded),
                  validator: (value){
                    if(emailValid.hasMatch(value!)){

                    }
                    else if(value.isEmpty){
                      return "please enter email";

                    }
                    else{
                      return 'Invalid Email';

                    }
                  },
                  onChanged: (value){
                    print('email is $value');
                  },
                ),
              ),
              SizedBox(height: 24,),

            ],
          ),
          ElevatedButton(onPressed: (){
          if(_formKey.currentState!.validate()){
            context.push(Paths.resetPassword.path);

          }


          }, child: Text('Submit'))
        ],
      ),

    );
  }
}
