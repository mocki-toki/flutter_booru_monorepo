import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeViewmodel extends Cubit<HomeState> {
  HomeViewmodel() : super(const HomeState.empty());
}
