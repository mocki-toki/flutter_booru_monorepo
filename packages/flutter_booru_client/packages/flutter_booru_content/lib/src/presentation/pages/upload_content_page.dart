import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_content/src/presentation/viewmodels/upload_content/upload_content_state.dart';
import 'package:flutter_booru_content/src/presentation/viewmodels/upload_content/upload_content_viewmodel.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class UploadContentPage extends StatelessWidget {
  UploadContentPage(this.route, {super.key});

  final UploadContentPageRoute route;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UploadContentViewModel>(
      create: (_) => UploadContentViewModel(
        context.getRequired<ContentRepository>(),
        context.getRequired<GoRouter>(),
        context.getRequired<ScaffoldMessengerState>(),
      ),
      child: BlocBuilder<UploadContentViewModel, UploadContentState>(
        builder: (context, state) => _UploadContentPageView(state),
      ),
    );
  }
}

class _UploadContentPageView extends StatelessWidget {
  const _UploadContentPageView(this.state, {Key? key}) : super(key: key);

  final UploadContentState state;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<UploadContentViewModel>();

    final isSendActive = state.file != null && state is UploadContentStateEdit;
    final onUpload = !isSendActive ? null : context.read<UploadContentViewModel>().uploadContent;
    final isLoading = state is UploadContentStateUploading;

    return Scaffold(
      appBar: AppBar(
        title: Text('Upload'),
        actions: [
          IconButton(
            onPressed: onUpload,
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (state.file == null) ...[
                _SwitchContentType(
                  value: state.contentType,
                  onSelected: viewModel.switchContentType,
                ),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: viewModel.chooseFile,
                    icon: Icon(Icons.upload),
                    label: Text('Choose ${state.contentType.name}'),
                  ),
                ),
              ],
              if (state.file != null) ...[
                Text(
                  'File selected',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    onPressed: viewModel.resetFile,
                    child: Text('Reset file'),
                  ),
                ),
              ],
            ],
          ),
          if (isLoading)
            Positioned.fill(
              child: ColoredBox(
                color: Colors.white70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 30),
                    Text(
                      'Uploading file',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _SwitchContentType extends StatelessWidget {
  const _SwitchContentType({
    Key? key,
    required this.value,
    required this.onSelected,
  }) : super(key: key);

  final ContentType value;
  final void Function(ContentType) onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          // this is feature
          // ignore: avoid-shrink-wrap-in-lists
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              final item = ContentType.values[index];
              return ChoiceChip(
                label: Text(item.name),
                selected: value == item,
                onSelected: (_) => onSelected(item),
              );
            },
            separatorBuilder: (_, __) => SizedBox(width: 10),
            itemCount: ContentType.values.length,
          ),
        ),
      ],
    );
  }
}

class UploadContentPageRoute extends ActivityRoute {
  const UploadContentPageRoute();

  static const path = '/upload';

  static UploadContentPageRoute fromData(RouteData _) => UploadContentPageRoute();

  @override
  RouteData get data => RouteData(path: path);
}
