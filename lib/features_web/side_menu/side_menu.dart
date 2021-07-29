import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:state_manage/features_web/const/const_web.dart';
import 'package:state_manage/features_web/side_menu/widgets/skill_widget.dart';
import 'package:state_manage/features_web/side_menu/widgets/social_icon.dart';
import 'widgets/avatar_widget.dart';
import 'widgets/information_widget.dart';

class SideMenu extends HookWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const AvatarWidget(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding / 3),
                    child: SingleChildScrollView(
                      child: Column(
                        children: const [
                          InformationWidget(),
                          Skill(),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: defaultPadding / 2),
                      child: Divider(
                        height: 4,
                        thickness: 4,
                        color: Colors.white38,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        direction: Axis.horizontal,
                        runSpacing: 10,
                        spacing: 20,
                        runAlignment: WrapAlignment.center,
                        alignment: WrapAlignment.center,
                        children: const [
                          SocialIcon(
                            path: 'assets/icons/fb_black.png',
                          ),
                          SocialIcon(
                            path: 'assets/icons/ins_black.png',
                          ),
                          SocialIcon(
                            path: 'assets/icons/github.png',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
