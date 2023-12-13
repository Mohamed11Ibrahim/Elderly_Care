import 'package:flutter/material.dart';
import 'package:elderly_care/cubit/cubit_app.dart';
import '../components/components.dart';
import '../utils.dart';

class signup_user extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // signupuserphoneaDF (134:50)
        padding: EdgeInsets.fromLTRB(43*fem, 43*fem, 44*fem, 324*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff5f5f5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // signupuserH7f (134:51)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 129*fem),
              child: Text(
                'Sign Up User',
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
              validate: (){},
              type: TextInputType.emailAddress,
              label: 'email',
            ),

            SizedBox(height: 30.0,),

            //Enter Password

            textform(
              validate: (){},
              type: TextInputType.visiblePassword,
              label: 'password',
              password: true,
            ),

            SizedBox(height: 50.0,),

            defultButton(
                text: 'Sign Up',
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
                      cubit_app.get(context).changescrren(2);
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