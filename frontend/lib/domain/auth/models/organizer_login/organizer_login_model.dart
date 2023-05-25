import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/auth.dart';

import '../../value_objects/email_value_object.dart';
import '../../value_objects/password_value_object.dart';

part 'organizer_login_model.freezed.dart';
part 'organizer_login_model.g.dart';

@freezed
class OrganizerLoginModel with _$OrganizerLoginModel {
  const factory OrganizerLoginModel({
    required EmailAddress email,
    required Password password,
  }) = _OrganizerLoginModel;

  factory OrganizerLoginModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizerLoginModelFromJson(json);
}