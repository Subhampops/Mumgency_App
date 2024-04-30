import 'package:flutter/material.dart';
import 'package:mumgency/core/app_export.dart';
import 'package:mumgency/widgets/custom_elevated_button.dart';
import 'package:mumgency/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpPageScreen extends StatelessWidget {
  SignUpPageScreen({Key? key}) : super(key: key);

  TextEditingController nameFieldController = TextEditingController();

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

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
                              _buildRowOne(context),
                              SizedBox(height: 51.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup17,
                                  height: 32.v,
                                  width: 180.h),
                              SizedBox(height: 31.v),
                              _buildRowTwo(context),
                              SizedBox(height: 32.v),
                              _buildNameField(context),
                              SizedBox(height: 20.v),
                              _buildEmailField(context),
                              SizedBox(height: 20.v),
                              _buildPasswordField(context),
                              SizedBox(height: 32.v),
                              Container(
                                  width: 310.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 25.h),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "By clicking ‘Sign Up’, You’re agreeing to our ",
                                            style: theme.textTheme.bodySmall),
                                        TextSpan(
                                            text: "Terms & Conditions",
                                            style: theme.textTheme.labelLarge),
                                        TextSpan(
                                            text: " and ",
                                            style: theme.textTheme.bodySmall),
                                        TextSpan(
                                            text: "Privacy Policy",
                                            style: theme.textTheme.labelLarge),
                                        TextSpan(
                                            text: ".",
                                            style: theme.textTheme.bodySmall)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 19.v),
                              _buildSignUpButton(context),
                              SizedBox(height: 29.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already have an account ?",
                                        style: CustomTextStyles
                                            .bodySmallErrorContainer_1),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtLogIn(context);
                                        },
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 3.h),
                                            child: Text("Log In",
                                                style: CustomTextStyles
                                                    .labelLargePrimary)))
                                  ]),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildRowOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 32.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello !", style: theme.textTheme.displayLarge),
                        Text("Create a new account",
                            style: CustomTextStyles
                                .titleLargeErrorContainerRegular)
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgImage2,
                  height: 105.v,
                  width: 52.h,
                  margin: EdgeInsets.only(bottom: 45.v))
            ]));
  }

  /// Section Widget
  Widget _buildRowTwo(BuildContext context) {
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

  /// Section Widget
  Widget _buildNameField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: CustomTextFormField(
            controller: nameFieldController, hintText: "Name"));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: CustomTextFormField(
            controller: emailFieldController,
            hintText: "Email Address",
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: CustomTextFormField(
            controller: passwordFieldController,
            hintText: "Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 16.v, 17.h, 17.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgRectangle6,
                    height: 17.v,
                    width: 22.h)),
            suffixConstraints: BoxConstraints(maxHeight: 50.v),
            obscureText: true,
            contentPadding:
                EdgeInsets.only(left: 20.h, top: 13.v, bottom: 13.v)));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        margin: EdgeInsets.symmetric(horizontal: 25.h),
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Navigates to the questionScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionScreen);
  }

  /// Navigates to the logInPageScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInPageScreen);
  }
}
