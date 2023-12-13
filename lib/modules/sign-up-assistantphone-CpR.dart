import 'package:flutter/material.dart';
import 'package:elderly_care/cubit/cubit_app.dart';
import '../components/components.dart';
import '../utils.dart';


class signup_ass2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // signupassistantphoneC41 (135:90)
        padding: EdgeInsets.fromLTRB(42*fem, 36*fem, 43*fem, 165*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff5f5f5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // enteryourdata6QH (135:91)
              margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 133*fem),
              child: Text(
                'Enter Your Data',
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
              label: 'Address',
              type: TextInputType.streetAddress,
              validate: (){},
            ),

            SizedBox(height: 30.0,),

            textform(
              label: 'Gender',
              type: TextInputType.text,
              validate: (){},

            ),

            SizedBox(height: 30.0,),

            textform(
              label: 'Relation',
              hiddenlabel: 'What is the relationship between you and the patient? ',
              type: TextInputType.text,
              validate: (){},

            ),

            SizedBox(height: 30.0,),

            textform(
              label: 'Patient Code',
              type: TextInputType.number,
              validate: (){},
            ),

            SizedBox(height: 50.0,),

            defultButton(
                text: 'Save',
                onpress: ()
                {
                  cubit_app.get(context).changescrren(1);
                }
            ),
          ],
        ),
      ),
          );
  }
}