import 'package:flutter/material.dart';
import 'package:habit_tracker_test/features/habit/views/habit_card.dart';

class HabitCardList extends StatelessWidget {
  const HabitCardList({super.key, required this.selectedDate});

  final DateTime selectedDate;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemCount: 10,
        itemBuilder: (context, index) {
          return HabitCard(
            //TODO: мультиязычность.
            title: 'Habit: $index',
            streak: 10,
            progress: 0.5,
            habitsId: 'habit_$index',
            isComplited: index / 2 == 0,
            date: selectedDate,
          );
        },
      ),
    );
  }
}
