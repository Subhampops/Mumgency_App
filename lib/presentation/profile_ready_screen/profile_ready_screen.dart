import 'package:flutter/material.dart';
import 'package:mumgency/core/app_export.dart';
import 'package:mumgency/widgets/custom_elevated_button.dart';

class ProfileReadyScreen extends StatelessWidget {
  const ProfileReadyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 43.v),
              Text(
                "Hello Neha !",
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 21.v),
              Text(
                "Your profile is ready !",
                style: CustomTextStyles.titleLargeErrorContainerRegular,
              ),
              SizedBox(height: 58.v),
              _buildProfileReadyStack(context),
              SizedBox(height: 80.v),
              CustomElevatedButton(
                text: "Continue",
                margin: EdgeInsets.symmetric(horizontal: 25.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileReadyStack(BuildContext context) {
    return SizedBox(
      height: 256.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage5,
            height: 182.v,
            width: 161.h,
            alignment: Alignment.topLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage4,
            height: 180.v,
            width: 164.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 29.v),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 256.adaptSize,
              width: 256.adaptSize,
              padding: EdgeInsets.all(17.h),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder128,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgEllipse1,
                height: 221.adaptSize,
                width: 221.adaptSize,
                radius: BorderRadius.circular(
                  110.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
