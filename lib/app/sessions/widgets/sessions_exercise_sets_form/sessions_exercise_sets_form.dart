import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import '/app/core/widgets/base_form_stateless_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'sessions_exercise_sets_form_controller.dart';
import 'sessions_exercise_sets_form_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class SessionsExerciseSetsForm
    extends BaseFormStatelessWidget<
        SessionsExerciseSetsFormController,
        SessionsExerciseSetsFormCubit,
        SessionsExerciseSetsFormState> {

  SessionsExerciseSetsForm({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsExerciseSetsFormCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          SessionsExerciseSetsFormCubit,
          SessionsExerciseSetsFormState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          final formGroup = getCubit(context).formGroup;
          return ReactiveFormBuilder(
            form: () => formGroup,
            builder: (context, form, child) {
              return ReactiveForm(
                  formGroup: formGroup,
                  child: Row(
                    children: [
                      Container(
                        margin: edge_insets_r_16,
                        width: MediaQuery.sizeOf(context).width/5,
                        height: 50,
                        child: ReactiveTextField<String>(
                          formControlName: 'weight',
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.grey2,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: borderRadius.br_10,
                                borderSide: BorderSide(
                                  color: AppColors.transparent,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: borderRadius.br_10,
                                borderSide:
                                BorderSide(color: AppColors.transparent)),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width/5,
                        height: 50,
                        child: ReactiveTextField<String>(
                          formControlName: 'reps',
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.grey2,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: borderRadius.br_10,
                                borderSide: BorderSide(
                                  color: AppColors.transparent,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: borderRadius.br_10,
                                borderSide:
                                BorderSide(color: AppColors.transparent)),
                          ),
                        ),
                      ),
                    ],
                  ));
            },
          );
        },
      ),
    );
  }

  @override
  SessionsExerciseSetsFormCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsExerciseSetsFormCubit cubit = SessionsExerciseSetsFormCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
