import 'package:flutter/material.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/content_body_model.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/image_content_body_model.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/video_content_body_model.dart';
import 'package:flutter_booru_content/src/domain/models/content_model.dart';
import 'package:flutter_booru_content/src/presentation/routes/content_details_page_route.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ContentPreviewWidget extends StatelessWidget {
  const ContentPreviewWidget(this.model, {super.key});

  final ContentModel model;

  static const double borderRadiusValue = 10;
  static const BorderRadius _borderRadius = BorderRadius.all(Radius.circular(borderRadiusValue));

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: _borderRadius,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: _ContentPreviewWidgetPreview(
        model,
        onTap: () => context.open(ContentDetailsPageRoute(model.uuid, cachedModel: model)),
      ),
    );
  }
}

class _ContentPreviewWidgetPreview extends StatelessWidget {
  const _ContentPreviewWidgetPreview(
    this.model, {
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final ContentModel model;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    ImageModel previewImage;
    switch (model.body.contentType) {
      case ContentType.image:
        final body = model.body as ImageContentBodyModel;
        previewImage = body.previewImage;
        break;
      case ContentType.video:
        final body = model.body as VideoContentBodyModel;
        previewImage = body.previewImage;
        break;
    }

    return Stack(
      children: [
        _ContentPreviewWidgetPreviewImage(
          previewImage,
          onTap: onTap,
        ),
        if (model.body.contentType == ContentType.video)
          Positioned.fill(
            child: IgnorePointer(
              child: Container(
                color: Colors.black54,
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _ContentPreviewWidgetPreviewImage extends StatelessWidget {
  const _ContentPreviewWidgetPreviewImage(
    this.previewImage, {
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final ImageModel previewImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final width = previewImage.width.toDouble();
    final height = previewImage.height.toDouble();
    final url = previewImage.url;

    return AspectRatio(
      aspectRatio: width / height,
      child: Stack(
        children: [
          Positioned.fill(child: Container(color: Colors.grey)),
          CachedNetworkImage(imageUrl: '$url'),
          Positioned.fill(
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
