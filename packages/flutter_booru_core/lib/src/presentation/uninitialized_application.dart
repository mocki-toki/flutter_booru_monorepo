import 'package:flutter/material.dart';

class UninitializedApplication extends StatelessWidget {
  const UninitializedApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
