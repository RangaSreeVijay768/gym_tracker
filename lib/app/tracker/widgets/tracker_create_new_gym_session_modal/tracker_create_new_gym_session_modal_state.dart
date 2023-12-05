part of 'tracker_create_new_gym_session_modal_cubit.dart';

@freezed
class TrackerCreateNewGymSessionModalState
    with _$TrackerCreateNewGymSessionModalState {
  const factory TrackerCreateNewGymSessionModalState.initial(
      {GymSession? gymSession, @Default(false) bool? openModal}) = _Initial;
}
