import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_content/src/presentation/viewmodels/content_list/content_list_state.dart';
import 'package:flutter_booru_content/src/presentation/viewmodels/content_list/content_list_viewmodel.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:uuid/uuid.dart';
import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';

class ContentListWidget extends StatelessWidget {
  const ContentListWidget({
    super.key,
    this.authorUuid,
  });

  final UuidValue? authorUuid;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContentListViewModel(
        context.getRequired(),
        authorUuid: authorUuid,
      ),
      child: _ContentListWidgetBody(),
    );
  }
}

class _ContentListWidgetBody extends StatelessWidget {
  const _ContentListWidgetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContentListViewModel, ContentListState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (items) {
            return SliverPadding(
              padding: EdgeInsets.all(10).copyWith(top: 5),
              sliver: SliverMasonryGrid.extent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                itemBuilder: (context, index) {
                  return ContentPreviewWidget(items[index]);
                },
                childCount: items.length,
              ),
            );
          },
          failure: (errorMessage) => SliverToBoxAdapter(child: Text(errorMessage)),
          orElse: () => SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(40),
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        );
      },
    );
  }
}
