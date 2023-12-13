import 'package:elderly_care/Modules/fristphone.dart';
import 'package:elderly_care/cubit/cubit_app.dart';
import 'package:flutter/material.dart';
import '../components/components.dart';
import '../utils.dart';

class welcome_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: TextButton(
        // splashphone7W9 (132:3)
        onPressed: () {},
        style: TextButton.styleFrom (
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(28.5*fem, 146*fem, 28.5*fem, 284*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xfff5f5f5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // cartoonnursepngimagenursenurse (132:4)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 113*fem),
                width: 320*fem,
                height: 320*fem,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(69*fem),
                  child: Image.asset(
                    'assets/page-1/images/cartoon-nurse-png-image-nurse-nurse-than-heart-cartoon-image-cartoon-illustration-love-spread-valentine-caring-for-patients-spread-health-png-image-for-free-download-2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                // welcomeweareallherewithyouEjB (132:5)
                constraints: BoxConstraints (
                  maxWidth: 373*fem,
                ),
                child: Text(
                  'welcome, we are all here with you',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Outfit',
                    fontSize: 32*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.0749999847*ffem/fem,
                    letterSpacing: 0.32*fem,
                    color: Color(0xff26343b),
                  ),
                ),
              ),
              SizedBox(height: 100.0),
              backButton(
                position: Alignment.bottomLeft,
                onpress: ()
                {
                  cubit_app.get(context).changescrren(1);
                },
              ),
            ],
          ),
        ),
      ),
          );
  }
}