import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:commons/style/color_theme.dart';
import 'package:commons/style/font_styles.dart';
import 'package:flutter/material.dart';


class CalendarPickerDateRange {
  Future<List<DateTime?>?> showDateRangeDialog(
      BuildContext context,
      double width,
      double height,
      List<DateTime?>? resultsDateRange,
      bool isRangeType) {
    return showCalendarDatePicker2Dialog(
      context: context,
      config: CalendarDatePicker2WithActionButtonsConfig(
        firstDate: DateTime.now(),
        calendarType: isRangeType
            ? CalendarDatePicker2Type.range
            : CalendarDatePicker2Type.single,

        //calendar style
        weekdayLabelTextStyle: TypographyTheme.fontH5,
        lastMonthIcon: const Icon(
          Icons.arrow_back_ios,
          color: ColorsTheme.textColor,
        ),
        nextMonthIcon: const Icon(
          Icons.arrow_forward_ios,
          color: ColorsTheme.textColor,
        ),
        controlsTextStyle: TypographyTheme.fontH5,
        dayTextStyle: TypographyTheme.fontBody3,
        selectedDayTextStyle: TypographyTheme.fontBody1CalendarWhite,
        selectedDayHighlightColor: ColorsTheme.primaryCoast,
        selectedYearTextStyle: TypographyTheme.fontBody1CalendarWhite,

        yearTextStyle: TypographyTheme.fontH5,
        dayBorderRadius: BorderRadius.circular(10),
        yearBorderRadius: BorderRadius.circular(10),
        cancelButtonTextStyle: TypographyTheme.fontH5primaryCoast,
        okButtonTextStyle: TypographyTheme.fontH5primaryCoast,
      ),
      dialogSize: Size(width * 0.9, height * .5),
      // initialValue: resultsDateRange ?? [],
      borderRadius: BorderRadius.circular(15),
      dialogBackgroundColor: ColorsTheme.backgroundCloud,
    );
  }
}
