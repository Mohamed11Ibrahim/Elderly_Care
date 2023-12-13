import 'package:flutter/material.dart';
import 'package:elderly_care/cubit/cubit_app.dart';
import '../utils.dart';

class choose_login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // fristphoned93 (132:6)
        padding: EdgeInsets.fromLTRB(47*fem, 357*fem, 40*fem, 380*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff5f5f5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame38rV (132:10)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 65*fem),
              child: TextButton(
                onPressed: ()
                {
                  cubit_app.get(context).changescrren(2);
                },
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 65*fem,
                  decoration: BoxDecoration (
                    color: Color(0xbc4aa7b8),
                    borderRadius: BorderRadius.circular(162*fem),
                  ),
                  child: Center(
                    child: Text(
                      'user',
                      style: SafeGoogleFont (
                        'Outfit',
                        fontSize: 32*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.0749999285*ffem/fem,
                        color: Color(0xff26343b),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              // frame4zNu (132:16)
              onPressed: ()
              {
                cubit_app.get(context).changescrren(3);
              },
              style: TextButton.styleFrom (
                padding: EdgeInsets.zero,
              ),
              child: Container(
                width: double.infinity,
                height: 65*fem,
                decoration: BoxDecoration (
                  color: Color(0xbc4aa7b8),
                  borderRadius: BorderRadius.circular(163*fem),
                ),
                child: Center(
                  child: Text(
                    'assistant',
                    style: SafeGoogleFont (
                      'Outfit',
                      fontSize: 32*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.0749999285*ffem/fem,
                      color: Color(0xff26343b),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}