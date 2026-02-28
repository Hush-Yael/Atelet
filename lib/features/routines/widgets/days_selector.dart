import 'package:atelet/core/controllers/locale_controller.dart';
import 'package:atelet/core/theme/app_theme.dart';
import 'package:atelet/features/routines/controllers/days_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_solidart/flutter_solidart.dart';

class WeekDaySelector extends StatefulWidget {
  const WeekDaySelector({super.key});

  @override
  State<WeekDaySelector> createState() => _WeekDaySelectorState();
}

class _WeekDaySelectorState extends State<WeekDaySelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.inputDecorationTheme.fillColor,
        border: Border.all(
          color: context
              .theme
              .inputDecorationTheme
              .enabledBorder!
              .borderSide
              .color,
        ),
        borderRadius: .all(Radius.circular(12)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        spacing: 6,
        children: [
          Text(
            context.l.routines_form_days_label.toUpperCase(),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: context.theme.hintColor,
              letterSpacing: 0.5,
            ),
          ),
          Divider(
            color: context
                .theme
                .inputDecorationTheme
                .enabledBorder!
                .borderSide
                .color,
          ),
          SignalBuilder(
            builder: (context, child) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(7, (index) => _buildDayColumn(index)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDayColumn(int index) {
    final WeekDaySelectorController weekDaysController =
        WeekDaySelectorController.provider.of(context);

    final daysInitials = weekDaysController.daysInitials;

    final bool isSelected = weekDaysController.selectedDays[index];

    return Expanded(
      child: GestureDetector(
        onTap: () => weekDaysController.toggleDay(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            // Day initials
            Text(
              daysInitials[index],
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: isSelected
                    ? context.theme.colorScheme.primary
                    : context.theme.hintColor,
              ),
            ),

            // Check indicator
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected
                    ? context.theme.colorScheme.primary
                    : Colors.transparent,
                border: Border.all(
                  color: isSelected
                      ? context.theme.colorScheme.primary
                      : context
                            .theme
                            .inputDecorationTheme
                            .enabledBorder!
                            .borderSide
                            .color,
                  width: 2,
                ),
              ),
              child: Center(
                child: isSelected
                    ? Icon(
                        Icons.check,
                        size: 16,
                        color: context.theme.colorScheme.onPrimary,
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
