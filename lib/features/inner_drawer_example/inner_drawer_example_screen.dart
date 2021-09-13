import 'package:flutter/material.dart';

import 'inner_drawer_custom.dart';

class InnerDrawerExample extends StatelessWidget {
  const InnerDrawerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
      // key: _innerDrawerKey,
      onTapClose: true, // default false
      swipe: true, // default true
      colorTransitionChild: Colors.red, // default Color.black54
      colorTransitionScaffold: Colors.black54, // default Color.black54

      //When setting the vertical offset, be sure to use only top or bottom
      offset: const IDOffset.only(bottom: 0.05, right: 0.0, left: 0.0),
      scale:
          const IDOffset.horizontal(0.8), // set the offset in both directions

      proportionalChildArea: true, // default true
      borderRadius: 50, // default 0
      leftAnimationType: InnerDrawerAnimation.static, // default static
      rightAnimationType: InnerDrawerAnimation.quadratic,
      backgroundDecoration: const BoxDecoration(
          color: Colors.red), // default  Theme.of(context).backgroundColor

      //when a pointer that is in contact with the screen and moves to the right or left
      onDragUpdate: (double val, InnerDrawerDirection? direction) {},
      innerDrawerCallback: (a) {}, // return  true (open) or false (close)
      leftChild: Container(), // required if rightChild is not set
      rightChild: Container(), // required if leftChild is not set

      scaffold: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false),
      ),
    );
  }
}
