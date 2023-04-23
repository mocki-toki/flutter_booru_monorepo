import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:flutter_booru_profile/src/presentation/viewmodels/edit_profile/edit_profile_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter/material.dart';

final _defaultState = EditProfileState.edit(
  usernameController: TextEditingController(),
);

class EditProfileViewModel extends Cubit<EditProfileState> {
  EditProfileViewModel(
    ProfileModel _profileModel,
    this._profileRepository,
    this._accountViewModel,
    this._currentAccountProfileViewModel,
    this._scaffoldMessenger,
    this._router,
  ) : super(_defaultState) {
    state.usernameController.text = '${_profileModel.username}';
  }

  final ProfileRepository _profileRepository;
  final AccountViewModel _accountViewModel;
  final CurrentAccountProfileViewModel _currentAccountProfileViewModel;
  final ScaffoldMessengerState _scaffoldMessenger;
  final GoRouter _router;

  Future<void> selectNewAvatar() async {
    final file = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file == null) return;

    final imageFile = ImageFile.fromFile(file);
    final imageFileValidationResult = imageFile.validate();

    if (imageFileValidationResult != TypedFileValidationResult.valid) {
      _scaffoldMessenger.showSnackBar(SnackBar(
        content: Text('Error: unsupported file type'),
      ));
      return;
    }

    emit(EditProfileState.uploading(usernameController: state.usernameController));
    final response = await _profileRepository.updateProfileAvatar(imageFile);

    if (isClosed) return;
    emit(EditProfileState.edit(usernameController: state.usernameController));

    return response.fold(
      (l) {
        return _scaffoldMessenger.showSnackBar(SnackBar(
          content: Text('Upload error: $l'),
        ));
      },
      (r) {
        _currentAccountProfileViewModel.reload();
      },
    );
  }

  void deleteAccount() {
    _scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Text('Are you sure?'),
        action: SnackBarAction(
          label: 'Yes',
          onPressed: () {
            _router.pop();
            _accountViewModel.deleteAccount();
          },
        ),
      ),
    );
  }

  Future<void> save() async {
    final newUsername = UsernameValue.fromString(state.usernameController.text);
    final usernameValidationResult = newUsername.validate();

    if (usernameValidationResult != UsernameValidationResult.valid) {
      _scaffoldMessenger.showSnackBar(SnackBar(
        content: Text('Invalid username format'),
      ));

      return;
    }

    final newProfileInfo = InputProfileInfoModel(username: newUsername);

    emit(EditProfileState.uploading(usernameController: state.usernameController));
    final response = await _profileRepository.updateProfileInfo(newProfileInfo);

    if (isClosed) return;
    emit(EditProfileState.edit(usernameController: state.usernameController));

    return response.fold(
      (l) {
        return _scaffoldMessenger.showSnackBar(SnackBar(
          content: Text('Upload error: $l'),
        ));
      },
      (r) {
        _currentAccountProfileViewModel.reload();
        _router.pop();
      },
    );
  }
}
