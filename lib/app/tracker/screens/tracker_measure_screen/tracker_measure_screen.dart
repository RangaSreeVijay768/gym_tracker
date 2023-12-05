import 'package:beebloom_gym_tracker/app/themes/borders.dart';
import 'package:beebloom_gym_tracker/app/themes/edge_insets.dart';
import 'package:beebloom_gym_tracker/app/themes/fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'tracker_measure_screen_controller.dart';
import 'tracker_measure_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class TrackerMeasureScreen
    extends BaseStatelessWidget<
        TrackerMeasureScreenController,
        TrackerMeasureScreenCubit,
        TrackerMeasureScreenState> {

  TrackerMeasureScreen({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerMeasureScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerMeasureScreenCubit, TrackerMeasureScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            appBar: AppBar(
              title: Text("Measure"),
            ),
            body: SingleChildScrollView(
              padding: edge_insets_16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Core", style: TextStyle(
                    fontSize: Fonts.fontSize18,
                    fontWeight: Fonts.f700
                  ),),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        return Container(
                          margin: edge_insets_t_16,
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: borderRadius.br_5,
                                  border: borders.b_1px_grey2
                              ),
                              padding: edge_insets_16,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Weight", style: TextStyle(
                                      fontSize: Fonts.fontSize16
                                  ),),
                                  Icon(Icons.chevron_right)
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                  SizedBox(height: 24,),
                  Text("Body part", style: TextStyle(
                      fontSize: Fonts.fontSize18,
                      fontWeight: Fonts.f700
                  ),),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        return Container(
                          margin: edge_insets_t_16,
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: borderRadius.br_5,
                                  border: borders.b_1px_grey2
                              ),
                              padding: edge_insets_16,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Shoulders", style: TextStyle(
                                      fontSize: Fonts.fontSize16
                                  ),),
                                  Icon(Icons.chevron_right)
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  )

                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerMeasureScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerMeasureScreenCubit cubit = TrackerMeasureScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
