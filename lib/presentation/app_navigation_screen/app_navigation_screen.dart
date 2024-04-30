import 'package:flutter/material.dart';
import 'package:mumgency/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Start Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.startPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Question",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "q1",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.q1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "q3",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.q3Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log In Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.logInPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "q2 (i)",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.q2IScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "q2 (ii)",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.q2IiScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "q4",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.q4Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile ready",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileReadyScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
