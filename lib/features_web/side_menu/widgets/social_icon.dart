import 'package:flutter/material.dart';
import 'package:state_manage/features_web/const/const_web.dart';

class SocialIcon extends StatelessWidget {
  final String path;

  const SocialIcon({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Image.asset(
          path,
          width: 25,
          height: 25,
          color: darkColor,
        ),
      ),
    );
  }
}
