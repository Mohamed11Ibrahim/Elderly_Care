import 'dart:js';

import 'package:elderly_care/Modules/sign-up-assistantphone.dart';
import 'package:elderly_care/Modules/splashphone.dart';
import 'package:elderly_care/cubit/states_app.dart';
import 'package:elderly_care/modules/login-assistantphone.dart';
import 'package:elderly_care/modules/login-userphone.dart';
import 'package:elderly_care/modules/sign-up-assistantphone-CpR.dart';
import 'package:elderly_care/modules/sign-up-userphone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Modules/fristphone.dart';

class cubit_app extends Cubit <states_app>
{
  cubit_app() : super (inti());
  static cubit_app get(context)=>BlocProvider.of(context);

  List<Widget> screens = [
    welcome_screen(),
    choose_login(),
    login_user(),
    login_ass(),
    signup_user(),
    signup_ass(),
    signup_ass2(),
  ];
  int currentIndex = 0;

  void changescrren(int index){
    currentIndex = index;
    emit(changeScreen());
  }
}