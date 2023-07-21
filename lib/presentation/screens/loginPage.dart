
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../config/routes/paths.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
            shrinkWrap: true,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Image.asset('assets/lg.png', height: 340,),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text('Login', style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.bold),),
                      )
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.alternate_email_sharp),
                        labelText: 'Email ID'
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outlined),
                        labelText: 'Password'
                    ),
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 220),
                    child: InkWell(
                      onTap: (){
                        context.push(Paths.forgetPasswordPage.path);

                      },
                      child: Text('Forget Password?', style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),),
                    ),
                  ),
                  SizedBox(height: 24,),

                  SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurpleAccent
                          ),
                          onPressed: () {}, child: Text('Login'))
                  ),
                  SizedBox(height: 20,),
                  Text('OR'),
                  Divider(
                    thickness: 1.0,
                    height: 2,
                    color: Colors.black,
                  ),
                  SizedBox(height: 24,),
                  ElevatedButton.icon(
                    onPressed: () {
                    },
                    icon: IconButton(onPressed: () {
                      callingMethod2('https://accounts.google.com/v3/signin/identifier?dsh=S-1325213159%3A1689854281583990&authuser=0&continue=https%3A%2F%2Fmyaccount.google.com%2F%3Futm_source%3Dsign_in_no_continue%26pli%3D1&ec=GAlAwAE&hl=en&service=accountsettings&flowName=GlifWebSignIn&flowEntry=AddSession');
                    },
                      icon: Icon(FlutterIcons.google_ant),
                    ),
                    label: Text('Login with Google'),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to Logistics?',style: TextStyle(fontSize: 16),),
                      SizedBox(width: 4,),
                      InkWell(
                          onTap: () {
                            context.push(Paths.signupPage.path);
                          },
                          child: Text(
                            'Register', style: TextStyle(color: Colors.blue,fontSize: 16),)),
                    ],
                  ),
                ],
              )
            ]
        ),
      ),
    );
  }
  Future<void> callingMethod2(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
