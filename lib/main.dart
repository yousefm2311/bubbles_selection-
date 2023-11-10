import 'package:bubbles_selection/features/bubbles_selection/presentition/views/bubbles_selection_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BubbleSelection(),
    );
  }
}
