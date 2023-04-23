import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_booru_content/flutter_booru_content.dart';

class UploadContentButtonWidget extends StatelessWidget {
  const UploadContentButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountViewModel, AccountState>(
      bloc: context.getRequired<AccountViewModel>(),
      builder: (_, state) {
        return FloatingActionButton(
          onPressed: () => _onPressed(context, state),
          child: Icon(Icons.add),
        );
      },
    );
  }

  void _onPressed(BuildContext context, AccountState state) {
    state.maybeWhen(
      authorized: (_) => context.open(UploadContentPageRoute()),
      orElse: () {
        context.getRequired<ScaffoldMessengerState>().showSnackBar(
              SnackBar(content: Text('You need authorize for content publication')),
            );
      },
    );
  }
}
