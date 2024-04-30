import 'package:flutter/material.dart';
import 'package:mumgency/core/app_export.dart';
import 'package:mumgency/widgets/custom_elevated_button.dart';
import 'package:mumgency/widgets/custom_outlined_button.dart';

class StartPageScreen extends StatelessWidget {
  const StartPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage3,
                      height: 105.v,
                      width: 54.h,
                      alignment: Alignment.centerLeft),
                  SizedBox(height: 42.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          height: 352.v,
                          width: 283.h,
                          margin: EdgeInsets.only(right: 23.h),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle11,
                                height: 352.v,
                                width: 271.h,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 6.v),
                                    child: Text("Care ‘nd Share with Us",
                                        style: CustomTextStyles
                                            .headlineSmallPalanquinPrimary)))
                          ]))),
                  SizedBox(height: 67.v),
                  CustomElevatedButton(
                      text: "Sign Up",
                      margin: EdgeInsets.symmetric(horizontal: 25.h),
                      onPressed: () {
                        onTapSignUp(context);
                      }),
                  SizedBox(height: 20.v),
                  CustomOutlinedButton(
                      height: 60.v,
                      text: "Log In",
                      margin: EdgeInsets.symmetric(horizontal: 25.h),
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      buttonTextStyle:
                          CustomTextStyles.titleLargeErrorContainer,
                      onPressed: () {
                        onTapLogIn(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the signUpPageScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpPageScreen);
  }

  /// Navigates to the logInPageScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInPageScreen);
  }
}
