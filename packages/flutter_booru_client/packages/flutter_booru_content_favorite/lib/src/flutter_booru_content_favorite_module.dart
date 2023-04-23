import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';

class FlutterBooruContentFavoriteModule extends Module {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruCoreModule());
    services.addModule(FlutterBooruContentModule());
  }
}
