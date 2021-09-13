import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:state_manage/features_web/const/const_web.dart';
import 'package:state_manage/features_web/widgets_common/process_animation.dart';
import 'package:state_manage/features_web/widgets_common/switcher_process_animation.dart';

class Skill extends HookWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> styleSkillCircle = useState<int>(0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SelectableText(
                'Skill',
                style: Get.textTheme.subtitle1?.copyWith(height: 1),
                maxLines: 1,
              ),
            ),
            Flexible(
              child: SwitcherProcessAnimation(
                initIndex: styleSkillCircle.value,
                switchTap: (index) {
                  styleSkillCircle.value = index;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding / 2),
        AnimatedSwitcher(
          duration: defaultDurationFast,
          child: styleSkillCircle.value == 0
              ? Row(
                  key: const ValueKey('processCircle'),
                  children: const [
                    ProcessCircleAnimation(
                      label: 'Flutter',
                      percentage: 0.8,
                    ),
                    SizedBox(width: defaultPadding),
                    ProcessCircleAnimation(
                      label: 'Dart',
                      percentage: 0.8,
                    ),
                    SizedBox(width: defaultPadding),
                    ProcessCircleAnimation(
                      label: 'Firebase',
                      percentage: 0.7,
                    ),
                  ],
                )
              : Column(
                  key: const ValueKey('processLinear'),
                  children: const [
                    ProcessLinearAnimation(
                      label: 'Flutter',
                      percentage: 0.8,
                    ),
                    SizedBox(height: defaultPadding / 2),
                    ProcessLinearAnimation(
                      label: 'Dart',
                      percentage: 0.8,
                    ),
                    SizedBox(height: defaultPadding / 2),
                    ProcessLinearAnimation(
                      label: 'Firebase',
                      percentage: 0.7,
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
