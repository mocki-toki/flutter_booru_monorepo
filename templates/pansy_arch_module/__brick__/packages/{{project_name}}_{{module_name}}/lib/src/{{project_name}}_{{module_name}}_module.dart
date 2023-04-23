import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';
import 'package:{{project_name}}_core/{{project_name}}_core.dart';

class {{project_name.pascalCase()}}{{module_name.pascalCase()}}Module extends Module {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule({{project_name.pascalCase()}}CoreModule());
  }
}
