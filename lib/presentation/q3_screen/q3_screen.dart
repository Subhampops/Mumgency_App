import '../q3_screen/widgets/seven_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mumgency/core/app_export.dart';
import 'package:mumgency/widgets/custom_elevated_button.dart';
import 'package:mumgency/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Q3Screen extends StatelessWidget {
  Q3Screen({Key? key}) : super(key: key);

  TextEditingController cmController = TextEditingController();

  TextEditingController kgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 43.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 23.h),
                          child:
                              Text("3 / 4", style: theme.textTheme.bodyLarge))),
                  SizedBox(height: 12.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.h),
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
                  Spacer(),
                  Container(
                      width: 296.h,
                      margin: EdgeInsets.only(left: 32.h, right: 30.h),
                      child: Text("Please enter your height and weight?",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .headlineSmallPoppinsErrorContainerSemiBold)),
                  SizedBox(height: 19.v),
                  _buildCm(context),
                  SizedBox(height: 28.v),
                  _buildKg(context),
                  SizedBox(height: 35.v),
                  _buildIosKeyboard(context),
                  SizedBox(height: 6.v)
                ]))));
  }

  /// Section Widget
  Widget _buildCm(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: CustomTextFormField(
            controller: cmController,
            hintText: "Height ",
            suffix: Padding(
                padding: EdgeInsets.fromLTRB(30.h, 14.v, 16.h, 11.v),
                child: Text("cm",
                    style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 16.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400))),
            suffixConstraints: BoxConstraints(maxHeight: 50.v)));
  }

  /// Section Widget
  Widget _buildKg(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: CustomTextFormField(
            controller: kgController,
            hintText: "Weight",
            textInputAction: TextInputAction.done,
            suffix: Padding(
                padding: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 10.v),
                child: Text("kg",
                    style: TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 16.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400))),
            suffixConstraints: BoxConstraints(maxHeight: 50.v)));
  }

  /// Section Widget
  Widget _buildZero(BuildContext context) {
    return CustomElevatedButton(
        height: 62.v,
        width: 112.h,
        text: "0",
        buttonStyle: CustomButtonStyles.outlineErrorContainer,
        buttonTextStyle: theme.textTheme.headlineSmall!);
  }

  /// Section Widget
  Widget _buildIosKeyboard(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(6.h),
        decoration: AppDecoration.fillGray,
        child: Column(children: [
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 63.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 6.h,
                  crossAxisSpacing: 6.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 9,
              itemBuilder: (context, index) {
                return SevenItemWidget();
              }),
          SizedBox(height: 6.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 45.h),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 18.v,
                        width: 22.h,
                        margin: EdgeInsets.only(top: 21.v, bottom: 22.v)),
                    Spacer(),
                    _buildZero(context),
                    GestureDetector(
                        onTap: () {
                          onTapTwo(context);
                        },
                        child: Container(
                            height: 62.v,
                            width: 112.h,
                            margin: EdgeInsets.only(left: 6.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 45.h, vertical: 21.v),
                            decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgRectangle22,
                                height: 18.v,
                                width: 22.h,
                                alignment: Alignment.topCenter)))
                  ])))
        ]));
  }

  /// Navigates to the q4Screen when the action is triggered.
  onTapTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.q4Screen);
  }
}
