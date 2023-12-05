import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/fonts.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'sessions_get_all_gym_session_exercise_sets_controller.dart';
import 'sessions_get_all_gym_session_exercise_sets_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class SessionsGetAllGymSessionExerciseSets
    extends BaseStatelessWidget<
        SessionsGetAllGymSessionExerciseSetsController,
        SessionsGetAllGymSessionExerciseSetsCubit,
        SessionsGetAllGymSessionExerciseSetsState> {

  SessionsGetAllGymSessionExerciseSets(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionsGetAllGymSessionExerciseSetsCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          SessionsGetAllGymSessionExerciseSetsCubit,
          SessionsGetAllGymSessionExerciseSetsState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.getAllGymSessionExerciseSetsResponse?.gymSessionExerciseSet != null
          ? ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.getAllGymSessionExerciseSetsResponse!
                  .gymSessionExerciseSet!.length,
              itemBuilder: (context, index) {
                final gymSessionExerciseSet = state
                    .getAllGymSessionExerciseSetsResponse!
                    .gymSessionExerciseSet![index];
                return Container(
                  margin: edge_insets_t_16,
                  child: Table(
                      children: [
                        TableRow(children :[
                          Text('     Set', style: TextStyle(
                              fontWeight: Fonts.f500,
                              fontSize: Fonts.fontSize14
                          ),),
                          Text('  Previous', style: TextStyle(
                              fontWeight: Fonts.f500,
                              fontSize: Fonts.fontSize14
                          ),),
                          Text('  Kg', style: TextStyle(
                              fontWeight: Fonts.f500,
                              fontSize: Fonts.fontSize14
                          ),),
                          Text('  Reps', style: TextStyle(
                              fontWeight: Fonts.f500,
                              fontSize: Fonts.fontSize14
                          ),),
                          Text('  ', style: TextStyle(
                              fontWeight: Fonts.f500,
                              fontSize: Fonts.fontSize14
                          ),),
                        ]),
                        TableRow(children :[
                          Text(' '),
                          Text(' '),
                          Text(' '),
                          Text(' '),
                          Text(' '),
                        ]),
                        TableRow(children :[
                          Container(
                            child: Row(
                              children: [
                                TextButton(
                                    style: TextButton.styleFrom(
                                        padding: edge_insets_0
                                    ),
                                    onPressed: (){},
                                    child: Text("1", style: TextStyle(
                                        color: AppColors.textHeading
                                    ),)
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                TextButton(
                                    style: TextButton.styleFrom(
                                        padding: edge_insets_0
                                    ),
                                    onPressed: (){},
                                    child: Text("--", style: TextStyle(
                                        color: AppColors.textHeading
                                    ),)
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_r_8,
                            width: 10,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.grey4,
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
                            margin: edge_insets_r_8,
                            width: 10,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.grey4,
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
                          IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.check)
                          ),
                        ]),
                      ]
                  ),
                );
              })
          : SizedBox();
        },
      ),
    );
  }

  @override
  SessionsGetAllGymSessionExerciseSetsCubit createCubitAndAssignToController(
      BuildContext context) {
    SessionsGetAllGymSessionExerciseSetsCubit cubit = SessionsGetAllGymSessionExerciseSetsCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
