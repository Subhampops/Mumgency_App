import 'package:flutter/material.dart';
import 'package:mumgency/core/app_export.dart';
import 'package:mumgency/widgets/custom_elevated_button.dart';
import 'package:mumgency/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInPageScreen extends StatelessWidget {
  LogInPageScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage3106x53,
                                  height: 106.v,
                                  width: 53.h,
                                  alignment: Alignment.centerLeft),
                              SizedBox(height: 14.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 25.h),
                                      child: Text("Welcome !",
                                          style:
                                              theme.textTheme.displayLarge))),
                              SizedBox(height: 1.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 25.h),
                                      child: Text("Log In to continue",
                                          style: CustomTextStyles
                                              .titleLargeErrorContainerRegular))),
                              SizedBox(height: 70.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup17,
                                  height: 32.v,
                                  width: 180.h),
                              SizedBox(height: 31.v),
                              _buildRowWithLines(context),
                              SizedBox(height: 31.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 25.h),
                                  child: CustomTextFormField(
                                      controller: emailController,
                                      hintText: "Email Address",
                                      textInputType:
                                          TextInputType.emailAddress)),
                              SizedBox(height: 20.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 25.h),
                                  child: CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "Password",
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 16.v, 17.h, 17.v),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle6,
                                              height: 17.v,
                                              width: 22.h)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 50.v),
                                      obscureText: true,
                                      contentPadding: EdgeInsets.only(
                                          left: 20.h,
                                          top: 13.v,
                                          bottom: 13.v))),
                              SizedBox(height: 11.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 25.h),
                                      child: Text("Forgot password ?",
                                          style: CustomTextStyles
                                              .bodySmallErrorContainer))),
                              SizedBox(height: 26.v),
                              CustomElevatedButton(
                                  text: "Log In",
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 25.h)),
                              SizedBox(height: 27.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("Don’t have an account ?",
                                            style: CustomTextStyles
                                                .bodySmallErrorContainer_1)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignIn(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 3.h),
                                            child: Text("Sign In",
                                                style: CustomTextStyles
                                                    .labelLargePrimary)))
                                  ]),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildRowWithLines(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 9.v),
              child: SizedBox(width: 120.h, child: Divider())),
          Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Text("OR",
                  style: CustomTextStyles.bodyLargeInterErrorContainer)),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 9.v),
              child: SizedBox(width: 144.h, child: Divider(indent: 24.h)))
        ]));
  }

  /// Navigates to the signUpPageScreen when the action is triggered.
  onTapTxtSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpPageScreen);
  }
}
