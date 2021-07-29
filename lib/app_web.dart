import 'package:flutter/material.dart';

import 'features_web/const/const_web.dart';
import 'features_web/side_menu/side_menu.dart';
import 'features_web/side_menu/widgets/avatar_widget.dart';

class AppWebMain extends StatelessWidget {
  const AppWebMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Row(
          children: [
            const Expanded(
              flex: flexSizeSide,
              child: SideMenu(),
            ),
            Expanded(
              flex: flexSizeMain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                      child: Text(
                          'adasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasdadasdasd')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
