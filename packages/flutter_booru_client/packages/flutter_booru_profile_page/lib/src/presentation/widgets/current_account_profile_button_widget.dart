import 'package:flutter/material.dart';
import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:flutter_booru_profile_page/src/presentation/pages/profile_page.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentAccountProfileButtonWidget extends StatelessWidget {
  const CurrentAccountProfileButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountViewModel, AccountState>(
      bloc: context.getRequired<AccountViewModel>(),
      builder: (_, AuthState) {
        return AuthState.maybeMap(
          authorized: (_) => BlocBuilder<CurrentAccountProfileViewModel, ProfileState>(
            bloc: context.getRequired<CurrentAccountProfileViewModel>(),
            builder: (_, profileState) {
              return profileState.maybeMap(
                loaded: (value) => _Button(profileModel: value.data),
                orElse: () => _Button(enabled: false),
              );
            },
          ),
          orElse: () => _Button(),
        );
      },
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({Key? key, this.enabled = true, this.profileModel}) : super(key: key);

  final bool enabled;
  final ProfileModel? profileModel;

  @override
  Widget build(BuildContext context) {
    final widget = profileModel == null
        ? IconButton(
            icon: Icon(Icons.account_circle_outlined),
            onPressed: () => context.open(AuthPageRoute()),
          )
        : IconButton(
            icon: AvatarWidget.fromProfile(profileModel!, maxRadius: 15),
            onPressed: () => context.open(
              CurrentAccountProfilePageRoute(cachedModel: profileModel),
            ),
          );

    return IgnorePointer(
      ignoring: !enabled,
      child: Opacity(
        opacity: enabled ? 1 : 0.5,
        child: widget,
      ),
    );
  }
}
