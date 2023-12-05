import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'tracker_main_screen_state.dart';

part 'tracker_main_screen_cubit.freezed.dart';

class TrackerMainScreenCubit extends BaseCubit<TrackerMainScreenState> {
  TrackerMainScreenCubit({required super.context})
      : super(initialState: TrackerMainScreenState.initial(
      selectedWidgetName: 'WORKOUT'
  )){

  }


  selectWidget(String value) {
    emit(state.copyWith(selectedWidgetName: value));
  }

}
