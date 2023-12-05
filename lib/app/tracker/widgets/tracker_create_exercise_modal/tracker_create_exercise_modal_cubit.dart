import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/modals/base_modal/base_modal_cubit.dart';

part 'tracker_create_exercise_modal_state.dart';

part 'tracker_create_exercise_modal_cubit.freezed.dart';

class TrackerCreateExerciseModalCubit
    extends BaseModalCubit<TrackerCreateExerciseModalState> {
  TrackerCreateExerciseModalCubit({required super.context})
      : super(initialState: TrackerCreateExerciseModalState.initial());

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    // TODO: implement openModal
  }
}
