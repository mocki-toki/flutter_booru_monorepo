import 'dart:collection';

import 'package:fpdart/fpdart.dart';
import 'package:{{project_name}}_{{module_name}}/src/domain/services/{{service_name}}.dart';

class {{service_name.pascalCase()}}Impl implements {{service_name.pascalCase()}} {
  @override
  Future<Either<Error, UnmodifiableListView<ExampleItem>>> getList() async {
    final response = [ExampleItem()];
    return Right(UnmodifiableListView(response));
  }

  @override
  Future<Either<Error, ExampleItem>> getItem() async {
    return Right(ExampleItem());
  }
}
