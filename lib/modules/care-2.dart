import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

class welcom_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 250;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // care2Suo (135:89)
        width: double.infinity,
        height: 250*fem,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(236*fem),
          child: Image.asset(
            'assets/page-1/images/care-2.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
          );
  }
}