import 'package:elderly_care/Modules/fristphone.dart';
import 'package:elderly_care/modules/login-assistantphone.dart';
import 'package:flutter/material.dart';
import 'package:elderly_care/cubit/cubit_app.dart';
import '../components/components.dart';
import '../utils.dart';

class signup_ass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // signupassistantphone3Zs (134:62)
        padding: EdgeInsets.fromLTRB(42*fem, 43*fem, 43*fem, 237*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff5f5f5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // signupassistantYmX (134:63)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 126*fem),
              child: Text(
                'Sign Up Assistant',
                style: SafeGoogleFont (
                  'Outfit',
                  fontSize: 32*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.0749999285*ffem/fem,
                  color: Color(0xff26343b),
                ),
              ),
            ),
            textform(
              label: 'Full Name',
              type: TextInputType.name,
              validate: (){},
            ),

            SizedBox(height: 30.0,),

            textform(
              label: 'Email',
              type: TextInputType.emailAddress,
              validate: (){},
            ),

            SizedBox(height: 30.0,),

            textform(
              label: 'Phone',
              type: TextInputType.number,
              validate: (){},
            ),

            SizedBox(height: 30.0,),

            textform(
              label: 'Password',
              type: TextInputType.visiblePassword,
              password: true,
              validate: (){},


            ),

            SizedBox(height: 30.0,),

            textform(
              label: 'Confirm Password',
              type: TextInputType.visiblePassword,
              password: true,
              validate: (){},


            ),

            SizedBox(height: 50.0,),

            defultButton(
                text: 'Next...',
                onpress: ()
                {
                  cubit_app.get(context).changescrren(6);
                }
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text(
                      'Already I have an account !'
                  ),
                  SizedBox(width: 5.0,),
                  MaterialButton(
                    onPressed: ()
                    {
                      cubit_app.get(context).changescrren(3);
                    },
                    child: Text('Log In '),
                    textColor: Colors.blue,)
                ],
              ),
            ),

          ],
        ),
      ),
          );
  }
}