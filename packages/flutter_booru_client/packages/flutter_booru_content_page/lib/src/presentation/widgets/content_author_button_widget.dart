import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';

class ContentAuthorButtonWidget extends StatelessWidget {
  const ContentAuthorButtonWidget(
    this.authorProfileUuid, {
    this.authorProfileCachedModel,
    this.textColor,
    super.key,
  });

  final UuidValue authorProfileUuid;
  final ProfileModel? authorProfileCachedModel;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileViewModel(
        context.getRequired(),
        uuid: authorProfileUuid,
        cachedModel: authorProfileCachedModel,
      ),
      child: _ContentAuthorButtonWidgetBody(
        authorProfileUuid: authorProfileUuid,
        textColor: textColor,
      ),
    );
  }
}

class _ContentAuthorButtonWidgetBody extends StatelessWidget {
  const _ContentAuthorButtonWidgetBody({
    Key? key,
    required this.authorProfileUuid,
    required this.textColor,
  }) : super(key: key);

  final UuidValue authorProfileUuid;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileViewModel, ProfileState>(
      builder: (_, state) {
        final avatar = state.maybeWhen(
          loaded: (data) => AvatarWidget(
            username: data.username,
            avatarUrl: data.previewAvatar?.url,
          ),
          orElse: () => CircleAvatar(),
        );

        final usernameValue = state.maybeWhen(
          loaded: (data) => '${data.username}',
          failure: (_) => 'Failed to get information',
          orElse: () => 'Loading',
        );

        return InkWell(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          // TODO: костыль
          onTap: () => context.router.push('/profile/${authorProfileUuid}'),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                avatar,
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      usernameValue,
                      style: TextStyle(color: textColor),
                    ),
                    Text(
                      'Tap to view profile',
                      style: TextStyle(color: textColor?.withOpacity(0.8)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
