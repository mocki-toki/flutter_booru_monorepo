import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:flutter_booru_profile/src/presentation/viewmodels/edit_profile/edit_profile_state.dart';
import 'package:flutter_booru_profile/src/presentation/viewmodels/edit_profile/edit_profile_viewmodel.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage(this.route, {super.key});

  final EditProfilePageRoute route;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentAccountProfileViewModel, ProfileState>(
      bloc: context.getRequired<CurrentAccountProfileViewModel>(),
      builder: (_, state) => _EditProfilePageBody(state),
    );
  }
}

class _EditProfilePageBody extends StatelessWidget {
  const _EditProfilePageBody(
    this.state, {
    Key? key,
  }) : super(key: key);

  final ProfileState state;

  @override
  Widget build(BuildContext context) {
    return state.maybeMap(
      loaded: (state) => BlocProvider(
        create: (_) => EditProfileViewModel(
          state.data,
          context.getRequired<ProfileRepository>(),
          context.getRequired<AccountViewModel>(),
          context.getRequired<CurrentAccountProfileViewModel>(),
          context.getRequired<ScaffoldMessengerState>(),
          context.getRequired<GoRouter>(),
        ),
        child: _EditProfilePageLoaded(state),
      ),
      failure: (state) => Scaffold(body: Text(state.errorMessage)),
      orElse: () => Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}

class _EditProfilePageLoaded extends StatelessWidget {
  const _EditProfilePageLoaded(this.profileState, {Key? key}) : super(key: key);

  final ProfileStateLoaded profileState;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<EditProfileViewModel>();
    return BlocBuilder<EditProfileViewModel, EditProfileState>(
      builder: (_, state) {
        final isLoading = state is EditProfileStateUploading;

        return Scaffold(
          appBar: AppBar(
            title: Text('Edit Profile'),
            actions: [
              IconButton(
                icon: Icon(Icons.check),
                onPressed: viewModel.save,
              ),
            ],
          ),
          body: Stack(
            children: [
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          AvatarWidget.fromProfile(
                            profileState.data,
                            maxRadius: 50,
                          ),
                          Positioned.fill(
                            child: Material(
                              type: MaterialType.circle,
                              color: Colors.black54,
                              child: InkWell(
                                borderRadius: const BorderRadius.all(Radius.circular(100)),
                                onTap: viewModel.selectNewAvatar,
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextField(
                          controller: state.usernameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Username',
                          ),
                        ),
                      ),
                      FilledButton(
                        onPressed: viewModel.deleteAccount,
                        child: Text('Delete account'),
                      ),
                    ],
                  ),
                ),
              ),
              // TODO: переиспользовать
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
                          'Uploading changes',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

class EditProfilePageRoute extends ActivityRoute {
  const EditProfilePageRoute();

  static const path = '/profile/edit';

  static EditProfilePageRoute fromData(RouteData _) => EditProfilePageRoute();

  @override
  RouteData get data => RouteData(path: path);
}
