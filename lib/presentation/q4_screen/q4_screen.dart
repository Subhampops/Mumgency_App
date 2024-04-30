import 'package:flutter/material.dart';
import 'package:mumgency/core/app_export.dart';
import 'package:mumgency/widgets/custom_elevated_button.dart';
import 'package:mumgency/widgets/custom_outlined_button.dart';

class Q4Screen extends StatelessWidget {
  const Q4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 43.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child:
                              Text("4 / 4", style: theme.textTheme.bodyLarge))),
                  SizedBox(height: 12.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h, right: 4.h),
                      child: Container(
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
                                      theme.colorScheme.primary))))),
                  Spacer(flex: 42),
                  Container(
                      width: 259.h,
                      margin: EdgeInsets.only(left: 29.h, right: 28.h),
                      child: Text("Do you wear a fitness tracker?",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .headlineSmallPoppinsErrorContainerSemiBold)),
                  SizedBox(height: 64.v),
                  CustomOutlinedButton(
                      text: "Yes",
                      margin: EdgeInsets.only(left: 3.h, right: 5.h)),
                  SizedBox(height: 28.v),
                  CustomOutlinedButton(
                      text: "No",
                      margin: EdgeInsets.only(left: 3.h, right: 5.h)),
                  Spacer(flex: 57),
                  SizedBox(height: 48.v),
                  CustomElevatedButton(
                      text: "Next",
                      margin: EdgeInsets.only(left: 8.h),
                      onPressed: () {
                        onTapNext(context);
                      })
                ]))));
  }

  /// Navigates to the profileReadyScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileReadyScreen);
  }
}
