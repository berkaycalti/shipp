import 'package:freezed_annotation/freezed_annotation.dart';

part 'interest_model.freezed.dart';
part 'interest_model.g.dart';

/// Interest Model (Hobbies/Interests Catalog)
@freezed
class InterestModel with _$InterestModel {
  const factory InterestModel({
    required String id,
    required String name,
    String? category,
    String? icon,
    DateTime? createdAt,
  }) = _InterestModel;

  factory InterestModel.fromJson(Map<String, dynamic> json) =>
      _$InterestModelFromJson(json);
}

/// User Interest Model (User-Interest Mapping)
@freezed
class UserInterestModel with _$UserInterestModel {
  const factory UserInterestModel({
    required String userId,
    required String interestId,
    DateTime? createdAt,
  }) = _UserInterestModel;

  factory UserInterestModel.fromJson(Map<String, dynamic> json) =>
      _$UserInterestModelFromJson(json);
}

