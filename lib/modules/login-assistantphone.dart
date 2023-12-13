import 'package:elderly_care/modules/sign-up-assistantphone.dart';
import 'package:flutter/material.dart';
import '../components/components.dart';
import '../utils.dart';
import 'fristphone.dart';
import 'package:elderly_care/cubit/cubit_app.dart';



class login_ass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loginassistantphoneAtq (134:35)
        padding: EdgeInsets.fromLTRB(41*fem, 43*fem, 44*fem, 191*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff5f5f5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // loginassistant4zD (134:36)
              margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 27*fem),
              child: Text(
                'Log In Assistant',
                style: SafeGoogleFont (
                  'Outfit',
                  fontSize: 32*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.0749999285*ffem/fem,
                  color: Color(0xff26343b),
                ),
              ),
            ),
            Container(
              // welcomebackyrH (134:37)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 123*fem),
              child: Text(
                'welcome back!',
                style: SafeGoogleFont (
                  'Outfit',
                  fontSize: 20*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.0749999046*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
      textform(
        label: 'email',
        type: TextInputType.emailAddress,
        validate: (){},
      ),

      SizedBox(height: 30.0,),

      textform(
        label: 'password',
        type: TextInputType.visiblePassword,
        validate: (){},
        password: true,
      ),

      SizedBox(height: 30.0,),

      textform(
        label: 'patient code',
        type: TextInputType.number,
        validate: (){},


      ),

      SizedBox(height: 50.0,),

      defultButton(
          text: 'Log In',
          onpress: ()
          {
            cubit_app.get(context).changescrren(1);
          }
      ),
      SizedBox(height: 10.0,),
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Row(
          children: [
            Text(
                'Don\'t have an account ?'
            ),
            SizedBox(width: 5.0,),
            MaterialButton(
              onPressed: ()
              {
                cubit_app.get(context).changescrren(5);
              },
              child: Text('Sign Up '),
              textColor: Colors.blue,)
          ],
        ),
      ),
          ]
        )
      )
    );
  }
}