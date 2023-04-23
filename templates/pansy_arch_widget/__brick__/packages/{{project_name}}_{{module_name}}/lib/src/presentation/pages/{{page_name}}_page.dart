import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:{{project_name}}_{{module_name}}/src/presentation/viewmodels/{{page_name}}/{{page_name}}_viewmodel.dart';
import 'package:{{project_name}}_{{module_name}}/src/presentation/viewmodels/{{page_name}}/{{page_name}}_state.dart';

class {{page_name.pascalCase()}}Page extends StatelessWidget {
  const {{page_name.pascalCase()}}Page(this.route, {super.key});

  final {{page_name.pascalCase()}}PageRoute route;

  @override
  Widget build(BuildContext context) {
    {{#create_viewmodel}}return BlocProvider<{{page_name.pascalCase()}}ViewModel>(
      create: (_) => {{page_name.pascalCase()}}ViewModel(context.getRequired()),
      child: _{{page_name.pascalCase()}}PageBody(),
    );{{/create_viewmodel}}{{^create_viewmodel}}
    return Scaffold(
      appBar: AppBar(
        title: Text('{{page_name.titleCase()}}'),
      ),
      body: Text('Empty'),
    );{{/create_viewmodel}}
  }
}
{{#create_viewmodel}}
class _{{page_name.pascalCase()}}PageBody extends StatelessWidget {
  const _{{page_name.pascalCase()}}PageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('{{page_name.titleCase()}}'),
      ),
      body: BlocBuilder<{{page_name.pascalCase()}}ViewModel, {{page_name.pascalCase()}}State>(
        builder: (_, state) => state.maybeMap(
          loaded: (state) => _{{page_name.pascalCase()}}PageLoaded(state),
          failure: (state) => Text(state.errorMessage),
          orElse: () => Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}

class _{{page_name.pascalCase()}}PageLoaded extends StatelessWidget {
  const _{{page_name.pascalCase()}}PageLoaded(this.state, {Key? key}) : super(key: key);

  final {{page_name.pascalCase()}}State state;

  @override
  Widget build(BuildContext context) {
    return Text('$state');
  }
}
{{/create_viewmodel}}
class {{page_name.pascalCase()}}PageRoute extends ActivityRoute {
  const {{page_name.pascalCase()}}PageRoute();

  static const path = '/{{page_name}}';

  static {{page_name.pascalCase()}}PageRoute fromData(RouteData _) => {{page_name.pascalCase()}}PageRoute();

  @override
  RouteData get data => RouteData(path: path);
}

// TODO: need move to {{project_name.pascalCase()}}{{module_name.pascalCase()}}Module
@override
List<GoRoute> buildRoutes(provider) {
  return [
    route(
      path: {{page_name.pascalCase()}}PageRoute.path,
      routeFactory: {{page_name.pascalCase()}}PageRoute.fromData,
      builder: (_, __, route) => {{page_name.pascalCase()}}Page(route),
    ),
  ];
}