import 'package:beebloom_gym_tracker/app/themes/app_colors.dart';
import 'package:beebloom_gym_tracker/app/themes/edge_insets.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/buttons.dart';
import 'tracker_history_template_details_screen_controller.dart';
import 'tracker_history_template_details_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerHistoryTemplateDetailsScreen
    extends BaseStatelessWidget<
        TrackerHistoryTemplateDetailsScreenController,
        TrackerHistoryTemplateDetailsScreenCubit,
        TrackerHistoryTemplateDetailsScreenState> {

  const TrackerHistoryTemplateDetailsScreen(
      {Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerHistoryTemplateDetailsScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<
          TrackerHistoryTemplateDetailsScreenCubit,
          TrackerHistoryTemplateDetailsScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.share)),
                  Container(
                    width: 40,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                  )
                ],
              ),
            ),
            body: Container(
              padding: edge_insets_16,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24,),
                  Text("Morning Workout", style: TextStyle(
                    fontWeight: Fonts.f700,
                    fontSize: Fonts.fontSize24
                  ),),
                  SizedBox(height: 10,),
                  Text("Thursday, 9 November 2023, 11:44 am", style: TextStyle(
                    fontSize: Fonts.fontSize16,
                    color: AppColors.grey06
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.timer, color: AppColors.grey1,),
                      SizedBox(width: 5,),
                      Text("16s", style: TextStyle(
                          fontSize: Fonts.fontSize14
                      ),),
                      SizedBox(width: 15,),
                      Icon(Icons.monitor_weight, color: AppColors.grey1,),
                      SizedBox(width: 5,),
                      Text("2kg", style: TextStyle(
                          fontSize: Fonts.fontSize14
                      ),),
                      SizedBox(width: 15,),
                      Icon(Icons.task, color: AppColors.grey1,),
                      SizedBox(width: 5,),
                      Text("1 PRs", style: TextStyle(
                          fontSize: Fonts.fontSize14
                      ),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text("Aerobics", style: TextStyle(
                    fontSize: Fonts.fontSize16,
                    fontWeight: Fonts.f600
                  ),),
                  SizedBox(height: 10,),
                  Text("1.  0:05", style: TextStyle(
                      fontSize: Fonts.fontSize16,
                      color: AppColors.grey06
                  ),),
                  Text("2.  0:05", style: TextStyle(
                      fontSize: Fonts.fontSize16,
                      color: AppColors.grey06
                  ),),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              height: 100,
              child: Row(
                children: [
                  SizedBox(width: 32,),
                  Expanded(child: TextButton(
                      style: Buttons.primaryButton,
                      onPressed: (){},
                      child: Text("Perform again", style: TextStyle(
                          fontSize: Fonts.fontSize18,
                          fontWeight: Fonts.f500,
                          color: AppColors.white
                      ),)
                  )),
                  SizedBox(width: 32,)
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerHistoryTemplateDetailsScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerHistoryTemplateDetailsScreenCubit cubit = TrackerHistoryTemplateDetailsScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
