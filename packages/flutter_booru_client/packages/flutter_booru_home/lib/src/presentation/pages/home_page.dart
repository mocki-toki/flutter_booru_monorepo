import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_profile_page/flutter_booru_profile_page.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage(this.route, {super.key});

  final HomePageRoute route;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PresentationConstants.appName),
        actions: [CurrentAccountProfileButtonWidget()],
      ),
      floatingActionButton: UploadContentButtonWidget(),
      body: CustomScrollView(
        slivers: [
          ContentListWidget(),
        ],
      ),
    );
  }
}

class HomePageRoute extends ActivityRoute {
  const HomePageRoute();

  static const path = '/';

  static HomePageRoute fromData(RouteData _) => HomePageRoute();

  @override
  RouteData get data => RouteData(path: path);
}
