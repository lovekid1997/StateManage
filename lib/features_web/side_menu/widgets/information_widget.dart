import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manage/features_web/const/const_web.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
         SizedBox(height: 4),
        ItemInformationWidget(
          title: 'Address:',
          label: 'Quan 12, Ho Chi Minh, Vietnam',
        ),
        ItemInformationWidget(
          title: 'Birthday:',
          label: '29-09-1997',
        ),
        ItemInformationWidget(
          title: 'Gender:',
          label: 'Male',
        ),
        Divider(),
        SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}

class ItemInformationWidget extends StatelessWidget {
  final String title, label;

  const ItemInformationWidget({
    Key? key,
    required this.title,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: label,
      child: Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SelectableText(
              title,
              style: Get.textTheme.subtitle2?.copyWith(height: 1),
              maxLines: 1,
            ),
            const SizedBox(width: defaultPadding / 4),
            Expanded(
              child: SelectableText(
                label,
                textAlign: TextAlign.end,
                style: const TextStyle(height: 1),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
