import 'dart:collection';

import 'package:fpdart/fpdart.dart';

abstract class {{service_name.pascalCase()}} {
  Future<Either<Error, UnmodifiableListView<ExampleItem>>> getList();
  Future<Either<Error, ExampleItem>> getItem();
}
