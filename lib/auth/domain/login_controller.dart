

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../presentation/profile_page.dart';



class LoginController{


  static Future goToGoogleLogin(BuildContext context) async {

    try{
      var googleSignIn = GoogleSignIn().signIn();

      Future<GoogleSignInAccount?> googleSignInAccount = googleSignIn;

      final value=  await googleSignInAccount;



      final googleKey= await value?.authentication;

      String? accessToken=  googleKey?.accessToken.toString();
      print("Access token $accessToken");

      //  we send these accesstoken to backend

      print("Email:  ${value?.email ?? ''}");
      print("Display Name:  ${value?.displayName ?? ''}");
      print("PhotoUrl:  ${value?.photoUrl ?? ''}");
      print("AccessToken:  ${accessToken ?? ''}");

      Future.delayed(Duration(seconds: 2));

      if(accessToken!=null){
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context)=>ProfilePage(
                    name: value?.displayName ?? '',
                    email: value?.email ?? '',
                    photoUrl: value?.photoUrl ?? '')
            )
        );
      }

    }
    catch(e){
      print("Error occured: ${e.toString()}");

    }


  }
}