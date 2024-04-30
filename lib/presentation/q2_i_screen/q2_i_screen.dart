import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:mumgency/core/app_export.dart';
import 'package:mumgency/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class Q2IScreen extends StatelessWidget {
  Q2IScreen({Key? key}) : super(key: key);

  List<DateTime?> selectedDatesFromCalendar1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 43.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("2 / 4", style: theme.textTheme.bodyLarge)),
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
                  Spacer(),
                  Container(
                      width: 260.h,
                      margin: EdgeInsets.only(left: 27.h, right: 26.h),
                      child: Text(
                          "What was the date of your pregnancy confirmation?",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .headlineSmallPoppinsErrorContainerSemiBold)),
                  SizedBox(height: 16.v),
                  _buildCalendarWidget(context),
                  SizedBox(height: 41.v),
                  CustomElevatedButton(
                      text: "Next",
                      onPressed: () {
                        onTapNext(context);
                      }),
                  SizedBox(height: 48.v)
                ]))));
  }

  /// Section Widget
  Widget _buildCalendarWidget(BuildContext context) {
    return SizedBox(
        height: 280.v,
        width: 300.h,
        child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.single,
                firstDate: DateTime(DateTime.now().year - 5),
                lastDate: DateTime(DateTime.now().year + 5),
                firstDayOfWeek: 1,
                weekdayLabelTextStyle: TextStyle(
                    color: theme.colorScheme.errorContainer,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400),
                dayTextStyle: TextStyle(
                    color: theme.colorScheme.errorContainer.withOpacity(1),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400),
                disabledDayTextStyle: TextStyle(
                    color: theme.colorScheme.errorContainer,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400),
                weekdayLabels: [
                  "SUN",
                  "MON",
                  "TUE",
                  "WED",
                  "THU",
                  "FRI",
                  "SAT"
                ]),
            value: selectedDatesFromCalendar1,
            onValueChanged: (dates) {}));
  }

  /// Navigates to the q3Screen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.q3Screen);
  }
}
