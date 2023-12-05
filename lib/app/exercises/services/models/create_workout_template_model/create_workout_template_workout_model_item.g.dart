// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workout_template_workout_model_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWorkoutTemplateWorkoutModelItem
    _$CreateWorkoutTemplateWorkoutModelItemFromJson(
            Map<String, dynamic> json) =>
        CreateWorkoutTemplateWorkoutModelItem(
          exerciseModelId: json['exercise_model_id'] as String?,
          volume: json['volume'] as num?,
          units: json['units'] as String?,
          order: json['order'] as num?,
        );

Map<String, dynamic> _$CreateWorkoutTemplateWorkoutModelItemToJson(
        CreateWorkoutTemplateWorkoutModelItem instance) =>
    <String, dynamic>{
      'exercise_model_id': instance.exerciseModelId,
      'volume': instance.volume,
      'units': instance.units,
      'order': instance.order,
    };
