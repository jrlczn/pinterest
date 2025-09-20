import 'package:flutter/material.dart';
import 'widget/widget_tree.dart';

void main() {
  runApp(const Pinterest());
}

class Pinterest extends StatelessWidget {
  const Pinterest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: const WidgetTree(),
    );
  }
}
