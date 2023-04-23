import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_account/src/domain/services/auth_repository.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_booru_account/src/presentation/viewmodels/auth/auth_viewmodel.dart';
import 'package:flutter_booru_account/src/presentation/viewmodels/auth/auth_state.dart';

class AuthPage extends StatelessWidget {
  const AuthPage(this.route, {super.key});

  final AuthPageRoute route;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthViewModel(
        context.getRequired<AuthRepository>(),
        context.getRequired<ScaffoldMessengerState>(),
        context.getRequired<AccountViewModel>(),
      ),
      child: _AuthPageBody(),
    );
  }
}

class _AuthPageBody extends StatelessWidget {
  const _AuthPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auth'),
      ),
      body: BlocBuilder<AuthViewModel, AuthState>(
        builder: (_, state) => state.maybeMap(
          unauthorized: (state) => _AuthPageUnauthorized(state),
          authorized: (state) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.router.refresh();
            });

            return Container();
          },
          orElse: () => Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}

class _AuthPageUnauthorized extends StatelessWidget {
  const _AuthPageUnauthorized(this.state, {Key? key}) : super(key: key);

  final AuthStateUnauthorized state;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _SwitchAuthMethod(
              value: state.authMethod,
              onSelected: context.read<AuthViewModel>().switchAuthMethod,
            ),
            TextField(
              controller: state.authInputModel.emailController,
              decoration: InputDecoration(hintText: 'Email'),
            ),
            SizedBox(height: 5),
            TextField(
              controller: state.authInputModel.passwordController,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(height: 15),
            TextButton(
              child: Text(state.authMethod == AuthMethod.login ? 'Login' : 'Register'),
              onPressed: context.read<AuthViewModel>().authorize,
            ),
          ],
        ),
      ),
    );
  }
}

class _SwitchAuthMethod extends StatelessWidget {
  const _SwitchAuthMethod({
    Key? key,
    required this.value,
    required this.onSelected,
  }) : super(key: key);

  final AuthMethod value;
  final void Function(AuthMethod) onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              final item = AuthMethod.values[index];
              return ChoiceChip(
                label: Text(item.name),
                selected: value == item,
                onSelected: (_) => onSelected(item),
              );
            },
            separatorBuilder: (_, __) => SizedBox(width: 10),
            itemCount: AuthMethod.values.length,
          ),
        ),
      ],
    );
  }
}

class AuthPageRoute extends ActivityRoute {
  const AuthPageRoute();

  static const path = '/auth';

  static AuthPageRoute fromData(RouteData _) => AuthPageRoute();

  @override
  RouteData get data => RouteData(path: path);
}
