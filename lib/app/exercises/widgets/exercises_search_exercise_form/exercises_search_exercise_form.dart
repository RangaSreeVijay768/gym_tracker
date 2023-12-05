import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import '/app/core/widgets/base_form_stateless_widget.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'exercises_search_exercise_form_controller.dart';
import 'exercises_search_exercise_form_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class ExercisesSearchExerciseForm
    extends BaseFormStatelessWidget<
        ExercisesSearchExerciseFormController,
        ExercisesSearchExerciseFormCubit,
        ExercisesSearchExerciseFormState> {

  ExercisesSearchExerciseForm(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesSearchExerciseFormCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          ExercisesSearchExerciseFormCubit,
          ExercisesSearchExerciseFormState>(
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
                  child: Container(
                    margin: edge_insets_t_16,
                    padding: edge_insets_x_8,
                    decoration: BoxDecoration(
                        border: borders.b_1px_grey4,
                        borderRadius: borderRadius.br_5),
                    child: ReactiveTextField<String>(
                      style: const TextStyle(fontWeight: Fonts.f500),
                      formControlName: 'search',
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search, color: AppColors.grey1,),
                          focusedBorder: InputBorder.none,
                          hintText: 'Ex. Aerobics',
                          hintStyle: TextStyle(color: AppColors.grey4),
                          enabledBorder: InputBorder.none),
                    ),
                  ));
            },
          );
        },
      ),
    );
  }

  @override
  ExercisesSearchExerciseFormCubit createCubitAndAssignToController(
      BuildContext context) {
    ExercisesSearchExerciseFormCubit cubit = ExercisesSearchExerciseFormCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
