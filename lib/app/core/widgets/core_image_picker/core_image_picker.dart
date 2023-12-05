import 'dart:io';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../themes/app_colors.dart';
import '/app/core/database/boolean_status.dart';
import '/app/themes/borders.dart';
import '/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';

import 'core_image_picker_controller.dart';
import 'core_image_picker_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class CoreImagePicker extends BaseStatelessWidget<CoreImagePickerController,
    CoreImagePickerCubit, CoreImagePickerState> {
  CoreImagePicker({Key? key, super.controller, super.onStateChanged})
      : super(key: key);
  final ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoreImagePickerCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<CoreImagePickerCubit, CoreImagePickerState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return state.xFile != null
              ? InkWell(
                  onTap: () {
                    getCubit(context).pickImage();
                  },
                  child: ClipRRect(
                    borderRadius: borderRadius.br_100, // Image border
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48), // Image radius
                      child: Image.file(
                        File(state.xFile!.path),
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ))
              : InkWell(
                  onTap: () {
                    getCubit(context).pickImage();
                  },
                  child: Icon(Icons.person, size: 40, color: AppColors.textHeading,),
                );
        },
      ),
    );
  }

  @override
  CoreImagePickerCubit createCubitAndAssignToController(BuildContext context) {
    CoreImagePickerCubit cubit = CoreImagePickerCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
