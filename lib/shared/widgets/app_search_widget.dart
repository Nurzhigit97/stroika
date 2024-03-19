import 'package:flutter/material.dart';
import 'package:stroika/shared/widgets/app_input_widget.dart';

class AppSearchWidget extends StatelessWidget {
  const AppSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppInputWidget(
      hintText: 'Что нужно найти ?',
      leading: Icon(Icons.search),
    );
  }
}
