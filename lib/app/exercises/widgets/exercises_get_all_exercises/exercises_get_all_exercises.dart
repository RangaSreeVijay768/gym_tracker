import 'package:avatars/avatars.dart';
import 'package:beebloom_gym_tracker/app/entities/exercises/exercise.dart';
import 'package:beebloom_gym_tracker/app/sessions/widgets/sessions_create_gym_session_exercise/sessions_create_gym_session_exercise_controller.dart';
import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:beebloom_gym_tracker/app/tracker/screens/tracker_exercise_details_screen/tracker_exercise_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import '../../../sessions/services/models/create_gym_session_exercise/create_gym_session_exercise_response.dart';
import '../../../themes/edge_insets.dart';
import 'exercises_get_all_exercises_controller.dart';
import 'exercises_get_all_exercises_cubit.dart';




class ExercisesGetAllExercises extends BaseStatelessWidget<
    ExercisesGetAllExercisesController,
    ExercisesGetAllExercisesCubit,
    ExercisesGetAllExercisesState> {
  ExercisesGetAllExercises({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesGetAllExercisesCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<ExercisesGetAllExercisesCubit,
          ExercisesGetAllExercisesState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getAllExercisesResponse != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: edge_insets_l_24,
                      child: Text(
                        "Legs",
                        style: TextStyle(
                            fontSize: Fonts.fontSize18, fontWeight: Fonts.f600),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.getAllExercisesResponse!.size,
                        itemBuilder: (context, index) {
                          final exercise =
                              state.getAllExercisesResponse!.exercises[index];
                          return TextButton(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder()),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => TrackerExerciseDetailsScreen(exercise: exercise,)));
                            },
                            child: ListTile(
                                leading: Avatar(
                                  name: exercise.exerciseName.toString(),
                                  shape: AvatarShape.circle(25),
                                ),
                                title: Text(exercise.exerciseName.toString()),
                                ),
                          );
                        })
                  ],
                )
              : SizedBox(
                  height: 20,
                );
        },
      ),
    );
  }

  @override
  ExercisesGetAllExercisesCubit createCubitAndAssignToController(
      BuildContext context) {
    ExercisesGetAllExercisesCubit cubit =
        ExercisesGetAllExercisesCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}

class ExercisesGetAllExercisesWithSelect extends ExercisesGetAllExercises {
  ExercisesGetAllExercisesWithSelect(
      {Key? key,
      this.onExercisesSelected,
      this.onExerciseSelectCancelled,
      super.controller,
      super.onStateChanged,
      this.onGymSessionExerciseCreated})
      : super(key: key);

  Function? onExerciseSelectCancelled;
  Function(List<Exercise>?)? onExercisesSelected;
  Function(CreateGymSessionExerciseResponse)? onGymSessionExerciseCreated;
  SessionsCreateGymSessionExerciseController
      sessionsCreateGymSessionExerciseController =
      SessionsCreateGymSessionExerciseController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesGetAllExercisesCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<ExercisesGetAllExercisesCubit,
          ExercisesGetAllExercisesState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getAllExercisesResponse != null
              ? Column(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.getAllExercisesResponse!.size,
                            itemBuilder: (context, index) {
                              final exercise = state
                                  .getAllExercisesResponse!.exercises[index];
                              return Container(
                                padding: edge_insets_x_8_y_4,
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        getCubit(context).selectExercise(index);
                                        if (this.onExercisesSelected != null) {
                                          this.onExercisesSelected!([exercise]);
                                        }
                                      },
                                      child: ListTile(
                                          leading: Avatar(
                                            name: exercise.exerciseName
                                                .toString(),
                                            shape: AvatarShape.circle(25),
                                          ),
                                          title: Text(exercise.id.toString()),
                                          subtitle: Text(exercise
                                              .exerciseDescription
                                              .toString()),
                                          trailing: state.selectedExercises
                                                  .contains(index)
                                              ? const Icon(
                                                  Icons.check_box,
                                                  color: AppColors.bgPrimary,
                                                )
                                              : const Icon(Icons
                                                  .check_box_outline_blank)),
                                    ),
                                  ],
                                ),
                              );
                            })),
                  ],
                )
              : SizedBox(
                  height: 20,
                );
        },
      ),
    );
  }
}

class ExercisesGetAllExercisesEmptyWidget extends ExercisesGetAllExercises {
  ExercisesGetAllExercisesEmptyWidget(
      {super.key, super.controller, super.onStateChanged});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExercisesGetAllExercisesCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<ExercisesGetAllExercisesCubit,
          ExercisesGetAllExercisesState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Container();
        },
      ),
    );
  }
}
