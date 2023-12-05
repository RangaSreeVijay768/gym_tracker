import 'package:flutter/cupertino.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

abstract class BaseCubit<State> extends Cubit<State> {
  BuildContext context;

  BaseCubit({required this.context, required State initialState})
      : super(initialState);

  emitState(State state) {
    emit(state);
  }
}

abstract class BaseFormCubit<State> extends BaseCubit<State> {
  late final FormGroup formGroup;

  FormGroup getFormGroup();

  void updateFormValidationState(ControlStatus event);

  void updateFormGroupState(FormGroup formGroup) {}

  void afterInitialize(FormGroup formGroup) {}

  BaseFormCubit({required super.context, required super.initialState}) {
    formGroup = getFormGroup();
    formGroup.statusChanged.listen((ControlStatus event) {
      updateFormValidationState(event);
      updateFormGroupState(formGroup);
    });
    afterInitialize(formGroup);
  }
}

abstract class HydratedBaseCubit<State> extends HydratedCubit<State> {
  BuildContext context;

  HydratedBaseCubit({required this.context, required State initialState})
      : super(initialState);
}
