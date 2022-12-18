import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: body),
    );
  }
}
