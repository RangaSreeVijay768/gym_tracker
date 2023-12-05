import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../entities/sessions/gym_session.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_create_new_gym_session_modal_content_state.dart';

part 'tracker_create_new_gym_session_modal_content_cubit.freezed.dart';

class TrackerCreateNewGymSessionModalContentCubit
    extends BaseCubit<TrackerCreateNewGymSessionModalContentState> {
  TrackerCreateNewGymSessionModalContentCubit({required super.context, GymSession? gymSession}) : super(
      initialState: TrackerCreateNewGymSessionModalContentState.initial(gymSession: gymSession));
}
