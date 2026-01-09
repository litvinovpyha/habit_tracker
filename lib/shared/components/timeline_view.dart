import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class TimelineView extends StatelessWidget {
  const TimelineView({
    super.key,
    required this.selectedDate,
    required this.onSelectedDateChanged,
  });

  final DateTime selectedDate;
  final void Function(DateTime) onSelectedDateChanged;
  @override
  Widget build(BuildContext context) {
    final colorCheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: EasyDateTimeLine(
        initialDate: selectedDate,
        onDateChange: onSelectedDateChanged,
        headerProps: EasyHeaderProps(showHeader: false, showSelectedDate: true),
        dayProps: EasyDayProps(
          dayStructure: DayStructure.dayNumDayStr,
          activeDayStyle: DayStyle(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [colorCheme.primary, colorCheme.secondary],

                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            dayStrStyle: TextStyle(
              color: colorCheme.onPrimary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            dayNumStyle: TextStyle(
              color: colorCheme.onPrimary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          inactiveDayStyle: DayStyle(
            decoration: BoxDecoration(
              color: colorCheme.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: colorCheme.outlineVariant, width: 1), 
            ),
            dayStrStyle: TextStyle(color: colorCheme.onSurface, fontSize: 16),
            dayNumStyle: TextStyle(color: colorCheme.onSurface, fontSize: 16),
          ),
          todayHighlightStyle: TodayHighlightStyle.withBorder,
          todayHighlightColor: colorCheme.primaryContainer.withValues(
            alpha: 0.3,
          ),
        ),
        timeLineProps: EasyTimeLineProps(separatorPadding: 16),
      ),
    );
  }
}
