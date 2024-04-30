import 'package:flutter/material.dart';
import 'package:mumgency/core/app_export.dart';
import 'package:mumgency/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SevenItemWidget extends StatelessWidget {
  const SevenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      height: 62.v,
      width: 112.h,
      text: "1",
      buttonStyle: CustomButtonStyles.outlineErrorContainer,
      buttonTextStyle: theme.textTheme.headlineSmall!,
    );
  }
}
