
import 'package:flutter/material.dart';
import 'package:state_manage/features_web/const/const_web.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SwitcherProcessAnimation extends StatelessWidget {
  final Function(int) switchTap;
  final int initIndex;
  const SwitcherProcessAnimation({
    Key? key,
    required this.switchTap,
    required this.initIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 80) {
          return const SizedBox.shrink();
        } else {
          return ToggleSwitch(
            minWidth: 40,
            minHeight: 25,
            initialLabelIndex: initIndex,
            cornerRadius: 8,
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.grey,
            inactiveFgColor: Colors.white,
            totalSwitches: 2,

            icons: const [
              Icons.radio_button_unchecked,
              Icons.horizontal_rule,
            ],
            iconSize: 30.0,
            activeBgColors: const [
              [Colors.yellow, primaryColor],
              [Colors.yellow, primaryColor]
            ],
            animate: true, // 800
            curve: Curves
                .decelerate, // animate must be set to true when using custom curve
            onToggle: (index) {
              switchTap(index);
            },
          );
        }
      },
    );
  }
}
