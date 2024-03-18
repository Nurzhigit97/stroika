import 'package:flutter/material.dart';
import 'package:stroika/shared/gen/assets.gen.dart';

class TwoCircleWidget extends StatelessWidget {
  const TwoCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3.6,
      child: Assets.images.svg.twoCircle.svg(
        fit: BoxFit.cover,
      ),
    );
  }
}
