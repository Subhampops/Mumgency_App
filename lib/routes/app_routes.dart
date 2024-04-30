import 'package:flutter/material.dart';
import 'package:mumgency/presentation/start_page_screen/start_page_screen.dart';
import 'package:mumgency/presentation/question_screen/question_screen.dart';
import 'package:mumgency/presentation/q1_screen/q1_screen.dart';
import 'package:mumgency/presentation/q3_screen/q3_screen.dart';
import 'package:mumgency/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:mumgency/presentation/log_in_page_screen/log_in_page_screen.dart';
import 'package:mumgency/presentation/q2_i_screen/q2_i_screen.dart';
import 'package:mumgency/presentation/q2_ii_screen/q2_ii_screen.dart';
import 'package:mumgency/presentation/q4_screen/q4_screen.dart';
import 'package:mumgency/presentation/profile_ready_screen/profile_ready_screen.dart';
import 'package:mumgency/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startPageScreen = '/start_page_screen';

  static const String questionScreen = '/question_screen';

  static const String q1Screen = '/q1_screen';

  static const String q3Screen = '/q3_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String logInPageScreen = '/log_in_page_screen';

  static const String q2IScreen = '/q2_i_screen';

  static const String q2IiScreen = '/q2_ii_screen';

  static const String q4Screen = '/q4_screen';

  static const String profileReadyScreen = '/profile_ready_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    startPageScreen: (context) => StartPageScreen(),
    questionScreen: (context) => QuestionScreen(),
    q1Screen: (context) => Q1Screen(),
    q3Screen: (context) => Q3Screen(),
    signUpPageScreen: (context) => SignUpPageScreen(),
    logInPageScreen: (context) => LogInPageScreen(),
    q2IScreen: (context) => Q2IScreen(),
    q2IiScreen: (context) => Q2IiScreen(),
    q4Screen: (context) => Q4Screen(),
    profileReadyScreen: (context) => ProfileReadyScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
