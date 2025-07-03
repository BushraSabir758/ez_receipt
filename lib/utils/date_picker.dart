import 'package:ez_receipt/utils/app_colors.dart';
import 'package:flutter/material.dart';

Future<DateTime?> selectDate({required BuildContext context, DateTime? firstDate, DateTime? lastDate}) async {
  firstDate = firstDate ?? DateTime(1970);
  lastDate = lastDate ?? DateTime.now();
  final DateTime? selectedDate = await showDatePicker(
    context: context,
    initialEntryMode: DatePickerEntryMode.calendarOnly,
    initialDate: DateTime.now(),
    firstDate: firstDate,
    lastDate: lastDate,
    confirmText: "Select",
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: greenColor,
            onPrimary: Colors.white,
            surface: whiteColor,
          ),
          dialogBackgroundColor: Colors.white,
        ),
        child: child!,
      );
    },
  );

  if (selectedDate != null) {
    debugPrint("Selected date: $selectedDate");
  } else {
    debugPrint("Date picker was canceled.");
  }
  return selectedDate;
}