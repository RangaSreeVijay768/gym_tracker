import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../core/widgets/base_form_stateless_widget.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/edge_insets.dart';
import '../../../themes/fonts.dart';
import '../../../themes/borders.dart';
import 'exercises_create_exercise_form_controller.dart';
import 'exercises_create_exercise_form_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class ExercisesCreateExerciseForm
    extends BaseFormStatelessWidget<
        ExercisesCreateExerciseFormController,
        ExercisesCreateExerciseFormCubit,
        ExercisesCreateExerciseFormState> {

  ExercisesCreateExerciseForm(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesCreateExerciseFormCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExercisesCreateExerciseFormCubit,
          ExercisesCreateExerciseFormState>(
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
                  child: Column(
                    children: [
                      Container(
                        margin: edge_insets_t_16,
                        padding: edge_insets_8,
                        decoration: BoxDecoration(
                            color: AppColors.grey01,
                            border: borders.b_1px_grey05,
                            borderRadius: borderRadius.br_5),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              // padding: edge_insets_y_8,
                              child: const Text(
                                "Exercise Name",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize12,
                                    color: AppColors.grey06),
                              ),
                            ),
                            ReactiveTextField<String>(
                              style: const TextStyle(fontWeight: Fonts.f500),
                              formControlName: 'exerciseName',
                              decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  hintText: 'Ex. Aerobics',
                                  hintStyle: TextStyle(color: AppColors.grey4),
                                  enabledBorder: InputBorder.none),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: edge_insets_t_16,
                        padding: edge_insets_8,
                        decoration: BoxDecoration(
                            color: AppColors.grey01,
                            border: borders.b_1px_grey05,
                            borderRadius: borderRadius.br_5),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              // padding: edge_insets_y_8,
                              child: const Text(
                                "Exercise Description",
                                style: TextStyle(
                                    fontSize: Fonts.fontSize12,
                                    color: AppColors.grey06),
                              ),
                            ),
                            ReactiveTextField<String>(
                              style: const TextStyle(fontWeight: Fonts.f500),
                              formControlName: 'exerciseDescription',
                              decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  hintText: 'Tell something about exercise',
                                  hintStyle: TextStyle(color: AppColors.grey4),
                                  enabledBorder: InputBorder.none),
                            )
                          ],
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
  ExercisesCreateExerciseFormCubit createCubitAndAssignToController(
      BuildContext context) {
    ExercisesCreateExerciseFormCubit cubit = ExercisesCreateExerciseFormCubit(context: context
        );
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
