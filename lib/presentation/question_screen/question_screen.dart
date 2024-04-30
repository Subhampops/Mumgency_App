import 'package:flutter/material.dart';
import 'package:mumgency/core/app_export.dart';
import 'package:mumgency/widgets/custom_elevated_button.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 89.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgA41,
                          height: 211.adaptSize,
                          width: 211.adaptSize),
                      SizedBox(height: 38.v),
                      Container(
                          width: 253.h,
                          margin: EdgeInsets.only(left: 27.h, right: 28.h),
                          child: Text(
                              "To help with creating your profile, kindly answer a few questions.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .headlineSmallPoppinsErrorContainer)),
                      Spacer(),
                      SizedBox(height: 3.v),
                      CustomElevatedButton(
                          text: "Continue",
                          onPressed: () {
                            onTapContinue(context);
                          })
                    ]))));
  }

  /// Navigates to the q1Screen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.q1Screen);
  }
}
