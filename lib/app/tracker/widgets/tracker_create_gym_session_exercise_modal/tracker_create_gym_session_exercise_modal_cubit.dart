import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../entities/sessions/gym_session.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';
import '/app/core/modals/base_modal/base_modal_cubit.dart';

part 'tracker_create_gym_session_exercise_modal_state.dart';

part 'tracker_create_gym_session_exercise_modal_cubit.freezed.dart';

class TrackerCreateGymSessionExerciseModalCubit
    extends BaseModalCubit<TrackerCreateGymSessionExerciseModalState> {
  TrackerCreateGymSessionExerciseModalCubit({required super.context, GymSession? gymSession}) : super(
      initialState: TrackerCreateGymSessionExerciseModalState.initial(gymSession: gymSession));

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    // TODO: implement openModal
  }
}
