import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
  const HabitCard({
    super.key,
    required this.title,
    required this.streak,
    required this.progress,
    required this.habitsId,
    required this.isComplited,
    required this.date,
  });
  final String title;
  final int streak;
  final double progress;
  final String habitsId;
  final bool isComplited;
  final DateTime date;
  @override
  Widget build(BuildContext context) {
    final colorCheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colorCheme.outlineVariant),
        gradient: LinearGradient(
          colors: [
            isComplited
                ? colorCheme.primaryContainer.withValues(alpha: 0.8)
                : colorCheme.surface.withValues(alpha: 0.1),
            isComplited
                ? colorCheme.primaryContainer.withValues(alpha: 0.6)
                : colorCheme.surface.withValues(alpha: 0.05),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [BoxShadow(color: colorCheme.shadow, blurRadius: 16)],
      ),
      child: Card(
        elevation: 0,
        color: Colors.transparent,

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title),
                    if (streak > 0) ...[
                      Row(
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            color: colorCheme.primary,
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          //TODO: мультиязычность.
                          Text('$streak days'),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
