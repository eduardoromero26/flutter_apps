import 'package:flutter/material.dart';
import 'package:commons/style/color_theme.dart';

class FilterByMonth extends StatelessWidget {
  final Function() onMonthSelected;
  const FilterByMonth(
      {super.key, required this.onMonthSelected, this.selectedMonth});
  final DateTime? selectedMonth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () => onMonthSelected(),
          child: const Row(
            children: [
              Icon(Icons.filter_list, color: ColorsTheme.textColor),
            ],
          ),
        ),
      ],
    );
  }
}
