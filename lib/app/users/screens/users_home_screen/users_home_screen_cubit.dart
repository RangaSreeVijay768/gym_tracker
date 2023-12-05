import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'users_home_screen_state.dart';

part 'users_home_screen_cubit.freezed.dart';

class UsersHomeScreenCubit extends BaseCubit<UsersHomeScreenState> {
  UsersHomeScreenCubit({required super.context})
      : super(initialState: UsersHomeScreenState.initial());
}
