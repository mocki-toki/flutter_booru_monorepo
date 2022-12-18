import 'package:flutter_bloc/flutter_bloc.dart';

import 'content_details_state.dart';

class ContentDetailsViewmodel extends Cubit<ContentDetailsState> {
  ContentDetailsViewmodel() : super(const ContentDetailsState.empty());
}
