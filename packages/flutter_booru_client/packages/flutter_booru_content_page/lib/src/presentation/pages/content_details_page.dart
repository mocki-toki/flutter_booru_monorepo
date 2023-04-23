import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/image_content_body_model.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/video_content_body_model.dart';
import 'package:flutter_booru_content/src/presentation/viewmodels/content_details/content_details_state.dart';
import 'package:flutter_booru_content/src/presentation/viewmodels/content_details/content_details_viewmodel.dart';
import 'package:flutter_booru_content_favorite/flutter_booru_content_favorite.dart';
import 'package:flutter_booru_content_page/src/presentation/pages/content_info_page.dart';
import 'package:flutter_booru_content_page/src/presentation/widgets/content_author_button_widget.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:photo_view/photo_view.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';

class ContentDetailsPage extends StatelessWidget {
  const ContentDetailsPage(this.route, {super.key});

  final ContentDetailsPageRoute route;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContentDetailsViewModel>(
      create: (_) => ContentDetailsViewModel(
        context.getRequired(),
        contentUuid: route.uuid,
        cachedData: route.cachedModel,
      ),
      child: BlocBuilder<ContentDetailsViewModel, ContentDetailsState>(
        builder: (context, state) => _ContentDetailsPageView(state),
      ),
    );
  }
}

class _ContentDetailsPageView extends StatefulWidget {
  const _ContentDetailsPageView(this.state, {Key? key}) : super(key: key);

  final ContentDetailsState state;

  @override
  State<_ContentDetailsPageView> createState() => _ContentDetailsPageViewState();
}

class _ContentDetailsPageViewState extends State<_ContentDetailsPageView> {
  bool _visibleInterface = true;
  double _statusBar = 0;
  Widget? _controlsWidget;

  @override
  void initState() {
    super.initState();
    _setVisibleSystemUI(true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _statusBar = MediaQuery.of(context).padding.top;
    });
  }

  @override
  void dispose() {
    _setVisibleSystemUI(true);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.state.maybeMap(
          loading: (state) => state.data?.body.contentType.value,
          loaded: (state) => '${state.data.body.contentType.value}',
          orElse: () => null,
        ) ??
        'Content';
    final data = widget.state.maybeWhen(
      loaded: (_, data) => data,
      loading: (_, data) => data,
      orElse: () => null,
    );

    final body = data != null
        ? _ContentDetailsPageLoaded(
            data,
            onTap: _switchInterfaceVisiblity,
            onInitializedControlsWidget: _onInitializedControlsWidget,
          )
        : CircularProgressIndicator();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(child: body),
          IgnorePointer(
            ignoring: !_visibleInterface,
            child: AnimatedOpacity(
              opacity: _visibleInterface ? 1 : 0,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(milliseconds: 50),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    top: _visibleInterface ? 0 : _statusBar,
                    left: 0,
                    right: 0,
                    child: AppBar(
                      backgroundColor: Colors.black54,
                      foregroundColor: Colors.white,
                      title: Text(title),
                      actions: [
                        FavoriteWidget(),
                        IconButton(
                          icon: Icon(Icons.info_outline),
                          onPressed: () => context.open(ContentInfoPageRoute(
                            widget.state.uuid,
                            cachedModel: data,
                          )),
                        ),
                      ],
                    ),
                  ),
                  if (_controlsWidget != null) _controlsWidget!,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onInitializedControlsWidget(widget) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() => _controlsWidget = widget);
    });
  }

  void _switchInterfaceVisiblity() {
    setState(() => _visibleInterface = !_visibleInterface);
    _setVisibleSystemUI(_visibleInterface);
  }

  void _setVisibleSystemUI(bool value) {
    if (!value) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    } else {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );
    }
  }
}

class _ContentDetailsPageLoaded extends StatelessWidget {
  const _ContentDetailsPageLoaded(
    this.model, {
    required this.onTap,
    required this.onInitializedControlsWidget,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final ContentModel model;
  final void Function(Widget widget) onInitializedControlsWidget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (model.body.contentType == ContentType.image)
          Positioned.fill(
            child: GestureDetector(
              onTap: onTap,
              child: _ContentDetailsPageImageContent(
                model.body as ImageContentBodyModel,
                onInitializedControlsWidget: onInitializedControlsWidget,
              ),
            ),
          ),
        if (model.body.contentType == ContentType.video)
          Positioned.fill(
            child: GestureDetector(
              onTap: onTap,
              child: _ContentDetailsPageVideoContent(
                model.body as VideoContentBodyModel,
                onInitializedControlsWidget: onInitializedControlsWidget,
              ),
            ),
          ),
      ],
    );
  }
}

class _ContentDetailsPageImageContent extends StatefulWidget {
  const _ContentDetailsPageImageContent(
    this.model, {
    Key? key,
    required this.onInitializedControlsWidget,
  }) : super(key: key);

  final ImageContentBodyModel model;
  // TODO: typedef function
  final void Function(Widget widget) onInitializedControlsWidget;

  @override
  State<_ContentDetailsPageImageContent> createState() => _ContentDetailsPageImageContentState();
}

class _ContentDetailsPageImageContentState extends State<_ContentDetailsPageImageContent> {
  @override
  void initState() {
    super.initState();

    widget.onInitializedControlsWidget(
      _ContentAuthorButton(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PhotoView.customChild(
      minScale: PhotoViewComputedScale.contained,
      maxScale: 2.0,
      child: CachedNetworkImage(
        imageUrl: '${widget.model.image.url}',
        fadeInDuration: Duration(milliseconds: 200),
        fadeOutDuration: Duration(milliseconds: 100),
        progressIndicatorBuilder: (_, __, progress) {
          return Center(
            child: CircularProgressIndicator(
              value: progress.progress,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}

class _ContentAuthorButton extends StatelessWidget {
  const _ContentAuthorButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContentDetailsViewModel, ContentDetailsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (uuid, data) {
            return Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Material(
                color: Colors.black54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15).copyWith(top: 15, bottom: 0),
                      child: Text(
                        'Publisher',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ContentAuthorButtonWidget(
                      data.authorProfileUuid,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}

class _ContentDetailsPageVideoContent extends StatefulWidget {
  const _ContentDetailsPageVideoContent(
    this.model, {
    required this.onInitializedControlsWidget,
    Key? key,
  }) : super(key: key);

  final VideoContentBodyModel model;
  final void Function(Widget widget) onInitializedControlsWidget;

  @override
  State<_ContentDetailsPageVideoContent> createState() => _ContentDetailsPageVideoContentState();
}

class _ContentDetailsPageVideoContentState extends State<_ContentDetailsPageVideoContent> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _initVideo();
    widget.onInitializedControlsWidget(_VideoPlayerControls(_controller));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
        PhotoView.customChild(
          minScale: PhotoViewComputedScale.contained,
          maxScale: 2.0,
          child: _controller.value.isInitialized
              ? Center(
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),
                )
              : Container(),
        ),
      ],
    );
  }

  Future<void> _initVideo() async {
    _controller = VideoPlayerController.network('${widget.model.video.url}');

    await Future.wait([
      _controller.initialize(),
      _controller.play(),
      _controller.setLooping(true),
    ]);

    setState(() {});
  }
}

class _VideoPlayerControls extends StatefulWidget {
  const _VideoPlayerControls(this.controller, {Key? key}) : super(key: key);

  final VideoPlayerController controller;

  @override
  State<_VideoPlayerControls> createState() => _VideoPlayerControlsState();
}

class _VideoPlayerControlsState extends State<_VideoPlayerControls> with TickerProviderStateMixin {
  late final _animationController =
      AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  late Animation<double> _animation =
      Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      if (widget.controller.value.isPlaying) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  void dispose() {
    widget.controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Column(
        children: [
          ColoredBox(
            color: Colors.black54,
            child: Row(
              children: [
                IconButton(
                  onPressed: _onPlayOrPause,
                  icon: AnimatedIcon(
                    progress: _animation,
                    icon: AnimatedIcons.play_pause,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: VideoProgressIndicator(
                    widget.controller,
                    allowScrubbing: true,
                    padding: EdgeInsets.symmetric(vertical: 20).copyWith(left: 10, right: 20),
                    colors: VideoProgressColors(
                      playedColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _ContentAuthorButton(),
        ],
      ),
    );
  }

  void _onPlayOrPause() {
    if (widget.controller.value.isPlaying) {
      widget.controller.pause();
    } else {
      widget.controller.play();
    }
  }
}
