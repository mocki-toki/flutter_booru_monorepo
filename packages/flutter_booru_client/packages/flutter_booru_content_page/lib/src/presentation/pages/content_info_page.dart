import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_content/src/presentation/viewmodels/content_details/content_details_state.dart';
import 'package:flutter_booru_content/src/presentation/viewmodels/content_details/content_details_viewmodel.dart';
import 'package:flutter_booru_content_page/src/presentation/widgets/content_author_button_widget.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

class ContentInfoPage extends StatelessWidget {
  const ContentInfoPage(this.route, {super.key});

  final ContentInfoPageRoute route;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContentDetailsViewModel>(
      create: (_) => ContentDetailsViewModel(
        context.getRequired(),
        contentUuid: route.uuid,
        cachedData: route.cachedModel,
      ),
      child: BlocBuilder<ContentDetailsViewModel, ContentDetailsState>(
        builder: (context, state) => _ContentInfoPageView(state),
      ),
    );
  }
}

class _ContentInfoPageView extends StatelessWidget {
  const _ContentInfoPageView(this.state, {Key? key}) : super(key: key);

  final ContentDetailsState state;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information'),
      ),
      body: state.maybeMap(
        loaded: (state) => _ContentInfoPageLoaded(state),
        failure: (error) => Text('Error: $error'),
        orElse: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _ContentInfoPageLoaded extends StatelessWidget {
  const _ContentInfoPageLoaded(this.state, {Key? key}) : super(key: key);

  final ContentDetailsStateLoaded state;

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('d MMMM y, HH:mm:ss');

    final model = state.data;
    final created = formatter.format(model.created);
    final updated = formatter.format(model.updated);
    final contentType = model.body.contentType.value;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Created: $created'),
          Text('Updated: $updated'),
          Text('Content type: $contentType'),
          ContentAuthorButtonWidget(model.authorProfileUuid),
        ],
      ),
    );
  }
}

class ContentInfoPageRoute extends ActivityRoute {
  ContentInfoPageRoute(
    this.uuid, {
    this.cachedModel,
  }) {
    if (cachedModel != null) assert(cachedModel!.uuid == uuid);
  }

  static const path = '/view/:uuid/info';

  static ContentInfoPageRoute fromData(RouteData data) {
    final uuid = data.parameters['uuid'] as String;
    return ContentInfoPageRoute(
      UuidValue(uuid),
      cachedModel: data.extra['cachedModel'],
    );
  }

  final UuidValue uuid;
  final ContentModel? cachedModel;

  @override
  RouteData get data {
    return RouteData(
      path: path,
      parameters: {'uuid': '$uuid'},
      extra: {'cachedModel': cachedModel},
    );
  }
}
