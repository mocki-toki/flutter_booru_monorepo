import 'package:freezed_annotation/freezed_annotation.dart';

part '{{page_name}}_state.freezed.dart';

@freezed
class {{page_name.pascalCase()}}State with _${{page_name.pascalCase()}}State {
  const factory {{page_name.pascalCase()}}State.empty() = {{page_name.pascalCase()}}StateEmpty;

  const factory {{page_name.pascalCase()}}State.loading() = {{page_name.pascalCase()}}StateLoading;

  const factory {{page_name.pascalCase()}}State.loaded({
    required ExampleModel data,
  }) = {{page_name.pascalCase()}}StateLoaded;

  const factory {{page_name.pascalCase()}}State.failure({
    required String errorMessage,
  }) = {{page_name.pascalCase()}}StateFailure;
}
