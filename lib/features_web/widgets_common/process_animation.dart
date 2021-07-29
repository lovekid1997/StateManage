import 'package:flutter/material.dart';
import 'package:state_manage/features_web/const/const_web.dart';

class ProcessCircleAnimation extends StatelessWidget {
  final double percentage;
  final String label;

  const ProcessCircleAnimation({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Tooltip(
        message: '$label\n${(percentage * 100).toInt()}%',
        padding: const EdgeInsets.all(4),
        textStyle: const TextStyle(height: 1.2),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: percentage),
                duration: defaultDurationMedium,
                builder: (context, double value, child) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: value,
                        backgroundColor: secondaryColor,
                        color: primaryColor,
                      ),
                      Center(
                        child: SelectableText(
                          '${(value * 100).toInt()}%',
                          style: const TextStyle(color: Colors.white),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            SelectableText(
              label,
              maxLines: 1,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class ProcessLinearAnimation extends StatelessWidget {
  final double percentage;
  final String label;

  const ProcessLinearAnimation({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: '$label\n${(percentage * 100).toInt()}%',
      padding: const EdgeInsets.all(4),
      textStyle: const TextStyle(height: 1.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            label,
            maxLines: 1,
            style: const TextStyle(color: Colors.white),
          ),
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDurationMedium,
            builder: (context, double value, child) {
              return Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: value,
                      backgroundColor: secondaryColor,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: defaultPadding / 2,
                  ),
                  SelectableText(
                    '${(value * 100).toInt()}%',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
