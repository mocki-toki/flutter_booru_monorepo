import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
    this.avatarUrl,
    required this.username,
    this.maxRadius,
  });

  factory AvatarWidget.fromProfile(ProfileModel profileModel, {double? maxRadius}) {
    return AvatarWidget(
      avatarUrl: profileModel.previewAvatar?.url,
      username: profileModel.username,
      maxRadius: maxRadius,
    );
  }

  final Uri? avatarUrl;
  final UsernameValue username;
  final double? maxRadius;

  @override
  Widget build(BuildContext context) {
    final hasAvatar = avatarUrl != null;

    return CircleAvatar(
      maxRadius: maxRadius,
      backgroundImage: !hasAvatar ? null : CachedNetworkImageProvider('$avatarUrl'),
      child: hasAvatar
          ? null
          : Text(
              '${username}'.characters.first.toUpperCase(),
              style: TextStyle(fontSize: maxRadius),
            ),
    );
  }
}
