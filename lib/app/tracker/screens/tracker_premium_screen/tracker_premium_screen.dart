import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/buttons.dart';
import '../../../themes/fonts.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import '/app/themes/shadows.dart';
import 'tracker_premium_screen_controller.dart';
import 'tracker_premium_screen_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import 'package:blurrycontainer/blurrycontainer.dart';


class TrackerPremiumScreen
    extends BaseStatelessWidget<
        TrackerPremiumScreenController,
        TrackerPremiumScreenCubit,
        TrackerPremiumScreenState> {

  TrackerPremiumScreen({Key? key, super.controller, super.onStateChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerPremiumScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerPremiumScreenCubit, TrackerPremiumScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            backgroundColor: AppColors.bgPrimary,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: AppColors.transparent,
              title: Text('Choose your plan', style: TextStyle(
                fontWeight: Fonts.f700,
                fontSize: Fonts.fontSize24,
                color: AppColors.white
              ),),
            ),
            body: SingleChildScrollView(
              padding: edge_insets_y_16,
              child: Column(
                children: [
                  Container(
                    margin: edge_insets_16,
                    decoration: BoxDecoration(
                        borderRadius: borderRadius.br_20,
                        border: borders.b_1px_grey2,
                        boxShadow: const [shadows.bs_primary]),
                    child: BlurryContainer(
                      padding: edge_insets_20,
                      blur: 30,
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              margin: edge_insets_8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text(
                                  'Basic',
                                  style: const TextStyle(
                                      fontSize: Fonts.fontSize18,
                                      fontWeight: Fonts.f500,
                                      color: AppColors.white),
                                )],
                              )),
                          const SizedBox(
                            height: 8,
                          ),
                          // Text(post.id,style: const TextStyle(color: AppColors.grey4),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("₹ 300/per month", style: TextStyle(
                                fontSize: Fonts.fontSize18,
                                fontWeight: Fonts.f700,
                                color: AppColors.white
                            ),)],
                          ),
                          Container(
                            margin: edge_insets_t_16,
                            child: Row(
                              children: [
                                Icon(Icons.check, color: AppColors.white),
                                SizedBox(width: 8,),
                                Text('Completely ads free.', style: TextStyle(
                                    fontWeight: Fonts.f500,
                                    fontSize: Fonts.fontSize14,
                                    color: AppColors.white
                                ))
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_16,
                            child: Row(
                              children: [
                                Icon(Icons.check, color: AppColors.white),
                                SizedBox(width: 8,),
                                Text('Unlock all workouts', style: TextStyle(
                                    fontWeight: Fonts.f500,
                                    fontSize: Fonts.fontSize14,
                                    color: AppColors.white
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_16,
                            child: Row(
                              children: [
                                Icon(Icons.check, color: AppColors.white),
                                SizedBox(width: 8,),
                                Text('Unlock 10 templates.', style: TextStyle(
                                    fontWeight: Fonts.f500,
                                    fontSize: Fonts.fontSize14,
                                    color: AppColors.white
                                ))
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_16,
                            child: Row(
                              children: [
                                Icon(Icons.check, color: AppColors.white),
                                SizedBox(width: 8,),
                                Text('Advance and detailed analytics', style: TextStyle(
                                    fontWeight: Fonts.f500,
                                    fontSize: Fonts.fontSize14,
                                    color: AppColors.white
                                ))
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_16,
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextButton(
                                        style: Buttons.primaryButton,
                                        onPressed: (){},
                                        child: Text("Get basic plan", style: TextStyle(
                                            fontSize: Fonts.fontSize18,
                                            fontWeight: Fonts.f500,
                                            color: AppColors.white
                                        ),)
                                    )
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                    ),
                  ),
                  Container(
                    // padding: edge_insets_10,
                    margin: edge_insets_16,
                    decoration: BoxDecoration(
                        borderRadius: borderRadius.br_20,
                        border: borders.b_1px_grey2,
                        boxShadow: const [shadows.bs_primary]),
                    child: BlurryContainer(
                      padding: edge_insets_20,
                      blur: 30,
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              margin: edge_insets_8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text(
                                  'Premium',
                                  style: const TextStyle(
                                      fontSize: Fonts.fontSize18,
                                      fontWeight: Fonts.f500,
                                      color: AppColors.white),
                                )],
                              )),
                          const SizedBox(
                            height: 8,
                          ),
                          // Text(post.id,style: const TextStyle(color: AppColors.grey4),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("₹ 600/per year", style: TextStyle(
                                fontSize: Fonts.fontSize18,
                                fontWeight: Fonts.f700,
                                color: AppColors.white
                            ),)],
                          ),
                          Container(
                            margin: edge_insets_t_16,
                            child: Row(
                              children: [
                                Icon(Icons.check, color: AppColors.white),
                                SizedBox(width: 8,),
                                Text('Completely ads free.', style: TextStyle(
                                    fontWeight: Fonts.f500,
                                    fontSize: Fonts.fontSize14,
                                    color: AppColors.white
                                ))
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_16,
                            child: Row(
                              children: [
                                Icon(Icons.check, color: AppColors.white),
                                SizedBox(width: 8,),
                                Text('Unlock all workouts', style: TextStyle(
                                    fontWeight: Fonts.f500,
                                    fontSize: Fonts.fontSize14,
                                    color: AppColors.white
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_16,
                            child: Row(
                              children: [
                                Icon(Icons.check, color: AppColors.white),
                                SizedBox(width: 8,),
                                Text('Unlock 10 templates.', style: TextStyle(
                                    fontWeight: Fonts.f500,
                                    fontSize: Fonts.fontSize14,
                                    color: AppColors.white
                                ))
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_16,
                            child: Row(
                              children: [
                                Icon(Icons.check, color: AppColors.white),
                                SizedBox(width: 8,),
                                Text('Advance and detailed analytics', style: TextStyle(
                                    fontWeight: Fonts.f500,
                                    fontSize: Fonts.fontSize14,
                                    color: AppColors.white
                                ))
                              ],
                            ),
                          ),
                          Container(
                            margin: edge_insets_t_16,
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextButton(
                                        style: Buttons.primaryButton,
                                        onPressed: (){},
                                        child: Text("Get premium plan", style: TextStyle(
                                            fontSize: Fonts.fontSize18,
                                            fontWeight: Fonts.f500,
                                            color: AppColors.white
                                        ),)
                                    )
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  TrackerPremiumScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    TrackerPremiumScreenCubit cubit = TrackerPremiumScreenCubit(
        context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
