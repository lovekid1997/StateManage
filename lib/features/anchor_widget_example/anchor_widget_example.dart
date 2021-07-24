import 'dart:math';

import 'package:flutter/material.dart';

class AnchorWidgetExapleScreen extends StatefulWidget {
  const AnchorWidgetExapleScreen({Key? key}) : super(key: key);

  @override
  _AnchorWidgetExapleScreenState createState() =>
      _AnchorWidgetExapleScreenState();
}

class _AnchorWidgetExapleScreenState extends State<AnchorWidgetExapleScreen> {
  final ValueKey key = const ValueKey('test key');
  final GlobalKey key1 = GlobalKey();
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    controller.addListener(() {
      checkWidgetIsRender();
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('anchor example'),
      // ),
      // bottomNavigationBar: SizedBox(
      //   width: double.infinity,
      //   height: 50,
      //   child: ElevatedButton(
      //         key: key,
      //         onPressed: () {},
      //         child: const Text('test button'),
      //                    ),
      // ),
      body: SafeArea(
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverPersistentHeader(
              delegate: AccountSliverAppBar(
                onTap: () {},
              ),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(
                  50,
                  (index) => const SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Text('test'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void checkWidgetIsRender() {}
}

class AccountSliverAppBar extends SliverPersistentHeaderDelegate {
  final Function onTap;
  AccountSliverAppBar({required this.onTap});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      height: maxExtent,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              height: kToolbarHeight,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('test button'),
              ),
            ),
          ]..addAll(
              List.generate(
                30,
                (index) => const SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Text('test'),
                ),
              ),
            ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 250;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
