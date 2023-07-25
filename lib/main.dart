import 'package:clean_archticture/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CleanArcheticture());
}


class CleanArcheticture extends StatelessWidget {
  const CleanArcheticture({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: appTheme,
    );
  }
}