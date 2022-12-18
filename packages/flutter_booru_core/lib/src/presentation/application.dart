import 'package:dino/dino.dart';
import 'package:dino_flutter/dino_flutter.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key, required this.serviceProvider});

  final ServiceProvider serviceProvider;

  @override
  Widget build(BuildContext context) {
    return DinoProvider(
      serviceProvider: serviceProvider,
      child: MaterialApp(), // TODO: add routes
    );
  }
}
