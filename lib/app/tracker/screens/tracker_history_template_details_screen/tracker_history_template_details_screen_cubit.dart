import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_history_template_details_screen_state.dart';

part 'tracker_history_template_details_screen_cubit.freezed.dart';

class TrackerHistoryTemplateDetailsScreenCubit
    extends BaseCubit<TrackerHistoryTemplateDetailsScreenState> {
  TrackerHistoryTemplateDetailsScreenCubit({required super.context})
      : super(initialState: TrackerHistoryTemplateDetailsScreenState.initial());
}
