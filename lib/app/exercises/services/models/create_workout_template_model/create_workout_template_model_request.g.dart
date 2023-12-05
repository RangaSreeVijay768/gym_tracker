// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workout_template_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateWorkoutTemplateModelRequest _$CreateWorkoutTemplateModelRequestFromJson(
        Map<String, dynamic> json) =>
    CreateWorkoutTemplateModelRequest(
      userAccountId: json['user_account_id'] as String?,
      bodyParts: (json['body_parts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createWorkoutTemplateWorkoutModelItems:
          (json['create_workout_template_workout_model_items']
                  as List<dynamic>?)
              ?.map((e) => CreateWorkoutTemplateWorkoutModelItem.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$CreateWorkoutTemplateModelRequestToJson(
        CreateWorkoutTemplateModelRequest instance) =>
    <String, dynamic>{
      'user_account_id': instance.userAccountId,
      'body_parts': instance.bodyParts,
      'types': instance.types,
      'create_workout_template_workout_model_items': instance
          .createWorkoutTemplateWorkoutModelItems
          ?.map((e) => e.toJson())
          .toList(),
    };
