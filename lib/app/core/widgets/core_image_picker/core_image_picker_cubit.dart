import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'core_image_picker_state.dart';

part 'core_image_picker_cubit.freezed.dart';

class CoreImagePickerCubit extends BaseCubit<CoreImagePickerState> {
  // late ImageSource imageSource;

  late ImagePicker imagePicker;

  CoreImagePickerCubit({required super.context})
      : super(initialState: CoreImagePickerState.initial()) {
    imagePicker = ImagePicker();
  }

  Future<void> pickImage() async {
    final XFile? image =
        await imagePicker.pickImage(source: ImageSource.gallery);
    emitState(state.copyWith(xFile: image,imagePickerStatus: BooleanStatus.picked));
  }
// = await ;
}
