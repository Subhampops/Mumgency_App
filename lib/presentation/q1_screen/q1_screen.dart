import 'package:flutter/material.dart';
import 'package:mumgency/core/app_export.dart';
import 'package:mumgency/widgets/custom_outlined_button.dart';

class Q1Screen extends StatelessWidget {
  const Q1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 43.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("1 / 4", style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 12.v),
                  Container(
                      height: 7.v,
                      width: 310.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primaryContainer),
                      child: ClipRRect(
                          child: LinearProgressIndicator(
                              value: 0.25,
                              backgroundColor:
                                  theme.colorScheme.primaryContainer,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  theme.colorScheme.primary)))),
                  Spacer(flex: 28),
                  Text("Are you pregnant ?",
                      style: CustomTextStyles
                          .headlineSmallPoppinsErrorContainerSemiBold),
                  SizedBox(height: 61.v),
                  CustomOutlinedButton(
                      text: "Yes, I am pregnant",
                      onPressed: () {
                        onTapYesIAmPregnant(context);
                      }),
                  SizedBox(height: 28.v),
                  CustomOutlinedButton(
                      text: "No, but I want to be pregnant",
                      onPressed: () {
                        onTapNobutIWantToBePregnant(context);
                      }),
                  Spacer(flex: 71)
                ]))));
  }

  /// Navigates to the q2IScreen when the action is triggered.
  onTapYesIAmPregnant(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.q2IScreen);
  }

  /// Navigates to the q2IiScreen when the action is triggered.
  onTapNobutIWantToBePregnant(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.q2IiScreen);
  }
}
