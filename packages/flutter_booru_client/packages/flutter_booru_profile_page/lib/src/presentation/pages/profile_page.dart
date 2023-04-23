import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage(this.route, {super.key})
      : assert(route is ProfilePageRoute || route is CurrentAccountProfilePageRoute);

  final ActivityRoute route;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentAccountProfileViewModel, ProfileState>(
      bloc: context.getRequired<CurrentAccountProfileViewModel>(),
      builder: (_, state) {
        final isCurrentAccountProfile =
            !route.data.parameters.containsKey('uuid') && state is ProfileStateLoaded;

        if (!route.data.parameters.containsKey('uuid') && state is! ProfileStateLoaded) {
          if (state is ProfileStateEmpty) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.router.refresh();
            });
          }

          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final currentAccountProfile = state is! ProfileStateLoaded ? null : state.data;

        return BlocProvider<ProfileViewModel>(
          create: (_) => ProfileViewModel(
            context.getRequired(),
            uuid: isCurrentAccountProfile
                ? currentAccountProfile!.uuid
                : UuidValue(route.data.parameters['uuid'], false),
            cachedModel: isCurrentAccountProfile ? currentAccountProfile! : null,
          ),
          child: _ProfilePageBody(isCurrentAccountProfile: isCurrentAccountProfile),
        );
      },
    );
  }
}

class _ProfilePageBody extends StatelessWidget {
  const _ProfilePageBody({
    Key? key,
    required this.isCurrentAccountProfile,
  }) : super(key: key);

  final bool isCurrentAccountProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          if (isCurrentAccountProfile)
            IconButton(
              icon: Icon(Icons.logout, color: Colors.red),
              onPressed: context.getRequired<AccountViewModel>().logout,
            ),
        ],
      ),
      floatingActionButton: !isCurrentAccountProfile ? null : UploadContentButtonWidget(),
      body: BlocBuilder<ProfileViewModel, ProfileState>(
        builder: (_, state) {
          return state.whenOrNull(
                loaded: (data) => _ProfilePageLoaded(
                  data,
                  isCurrentAccountProfile,
                ),
                loading: (data) =>
                    data == null ? null : _ProfilePageLoaded(data, isCurrentAccountProfile),
                failure: (errorMessage) => Text(errorMessage),
              ) ??
              Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class _ProfilePageLoaded extends StatelessWidget {
  const _ProfilePageLoaded(
    this.model,
    this.isCurrentAccountProfile, {
    Key? key,
  }) : super(key: key);

  final ProfileModel model;
  final bool isCurrentAccountProfile;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 20),
              AvatarWidget.fromProfile(model, maxRadius: 30),
              SizedBox(height: 15),
              Text(
                '${model.username}',
                textAlign: TextAlign.center,
                style: textTheme.titleMedium,
              ),
              if (isCurrentAccountProfile) ...[
                SizedBox(height: 15),
                Center(
                  child: OutlinedButton.icon(
                    icon: Icon(Icons.edit),
                    label: Text('Edit profile'),
                    onPressed: () => context.open(EditProfilePageRoute()),
                  ),
                ),
              ],
              SizedBox(height: 20),
            ],
          ),
        ),
        ContentListWidget(authorUuid: model.uuid),
      ],
    );
  }
}

class CurrentAccountProfilePageRoute extends ActivityRoute {
  const CurrentAccountProfilePageRoute({this.cachedModel});

  static const path = '/profile';

  static CurrentAccountProfilePageRoute fromData(RouteData data) {
    return CurrentAccountProfilePageRoute(
      cachedModel: data.extra['cachedModel'],
    );
  }

  final ProfileModel? cachedModel;

  @override
  RouteData get data {
    return RouteData(
      path: path,
      extra: {'cachedModel': cachedModel},
    );
  }
}

class ProfilePageRoute extends ActivityRoute {
  const ProfilePageRoute(this.uuid, {this.cachedModel});

  static const path = '/profile/:uuid';

  static ProfilePageRoute fromData(RouteData data) {
    return ProfilePageRoute(
      UuidValue(data.parameters['uuid'], false),
      cachedModel: data.extra['cachedModel'],
    );
  }

  final UuidValue uuid;
  final ProfileModel? cachedModel;

  @override
  RouteData get data {
    return RouteData(
      path: path,
      parameters: {'uuid': '$uuid'},
      extra: {'cachedModel': cachedModel},
    );
  }
}
