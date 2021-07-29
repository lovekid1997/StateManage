import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

import '../../const/const_web.dart';

class AvatarWidget extends HookWidget {
  const AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ticker = useSingleTickerProvider();
    return Container(
      color: const Color(0xFF242430),
      margin: const EdgeInsets.all(defaultPadding / 3),
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 100,
                      ),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return AnimatedSize(
                            duration: defaultDurationSlow,
                            curve: Curves.elasticOut,
                            vsync: ticker,
                            child: SizedBox(
                              width: constraints.maxWidth,
                              height: constraints.maxWidth,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3.5),
                                    child: CircleAvatar(
                                      backgroundImage: Image.asset(
                                              'assets/images/avatar.jpeg')
                                          .image,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: const Color(0xffE2E2E2),
                                        width: 4,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                            constraints.maxWidth / 2),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: defaultPadding / 2,
                      bottom: defaultPadding / 4,
                      left: defaultPadding / 4,
                      right: defaultPadding / 4,
                    ),
                    child: SelectableText(
                      'Nguyen The Vinh',
                      style: Get.textTheme.subtitle1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SelectableText(
                    'Flutter Developer',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class AvatarWidgetVer2 extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     // final double sizeImage = useMemoized(() => 200);

//     return LayoutBuilder(
//       builder: (context, constraints) {
//         log('maxHeight ${constraints.maxHeight}');
//         log('maxWidth ${constraints.maxWidth}');
//         final sizeImage = constraints.maxHeight * .28;
//         final sizeBackground = constraints.maxHeight * .23;
//         final paddingTop = constraints.maxHeight * .05;
//         final paddingLeft = paddingTop * 3;

//         return AnimatedPadding(
//           duration: defaultDurationSlow,
//           curve: Curves.elasticOut,
//           padding: EdgeInsets.only(
//             left: paddingLeft,
//             top: paddingTop,
//           ),
//           child: SizedBox(
//             height: sizeImage,
//             child: Stack(
//               alignment: Alignment.centerLeft,
//               children: [
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: sizeImage / 2,
//                     ),
//                     Expanded(
//                       child: Container(
//                         color: const Color(0xffFE9C00),
//                         height: sizeBackground,
//                       ),
//                     )
//                   ],
//                 ),
//                 Container(
//                   width: sizeImage,
//                   height: sizeImage,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffFE9C00),
//                     border: Border.all(
//                       color: const Color(0xffE2E2E2),
//                       width: 6,
//                     ),
//                     shape: BoxShape.circle,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(4),
//                     child: CircleAvatar(
//                       backgroundImage:
//                           Image.asset('assets/images/avatar.jpeg').image,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class TicketClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final double clipRadius = size.height * .09;

//     final path = Path();

//     path.addRRect(RRect.fromRectAndRadius(
//       Rect.fromLTWH(0, 0, size.width, size.height),
//       const Radius.circular(0),
//     ));

//     final clipCenterX = size.width * 0.85 + clipRadius;

//     final clipPath = Path();

//     clipPath.addOval(Rect.fromCircle(
//       center: Offset(clipCenterX, 0),
//       radius: clipRadius,
//     ));

//     clipPath.addOval(Rect.fromCircle(
//       center: Offset(clipCenterX, size.height),
//       radius: clipRadius,
//     ));

//     final ticketPath = Path.combine(
//       PathOperation.reverseDifference,
//       clipPath,
//       path,
//     );
//     return ticketPath;
//   }

//   @override
//   bool shouldReclip(TicketClipper oldClipper) => false;
// }

