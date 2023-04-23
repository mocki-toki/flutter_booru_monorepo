import 'package:flutter_bloc/flutter_bloc.dart';

import '{{page_name}}_state.dart';

class {{page_name.pascalCase()}}ViewModel extends Cubit<{{page_name.pascalCase()}}State> {
  {{page_name.pascalCase()}}ViewModel(this._exampleService) : super(const {{page_name.pascalCase()}}State.empty()) {
    getData();
  }

  final ExampleService _exampleService;

  Future<void> getData() async {
    emit({{page_name.pascalCase()}}State.loading());

    emit((await _exampleService.getData()).fold(
      (l) => {{page_name.pascalCase()}}State.failure(errorMessage: l.toString()),
      (r) => {{page_name.pascalCase()}}State.loaded(data: r),
    ));
  }
}
