// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Dino Generator
// **************************************************************************

// ignore_for_file: unnecessary_import

import 'package:dino/dino.dart';
import 'package:flutter_booru_core/src/infrastructure/providers/firebase_firestore_provider.dart';
import 'package:firebase_core/firebase_core.dart';

class $ServiceCollection extends RuntimeServiceCollection {
  @override
  void addGenerated<TService extends Object>(
    ServiceLifetime lifetime, [
    bool registerAliases = true,
  ]) {
    switch (TService) {
      case FirebaseFirestoreProvider:
        addFactory<FirebaseFirestoreProvider>(
          lifetime,
          (provider) => FirebaseFirestoreProvider(
            firebaseApp: provider.getRequired<FirebaseApp>(),
          ),
          true,
        );
        break;
    }
  }
}
