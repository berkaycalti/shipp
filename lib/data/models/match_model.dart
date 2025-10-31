import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';

part 'match_model.freezed.dart';
part 'match_model.g.dart';

/// Match Model
@freezed
class MatchModel with _$MatchModel {
  const factory MatchModel({
    required String id,
    required String user1Id,
    required String user2Id,
    required MatchStatus status,
    double? compatibilityScore,
    DateTime? createdAt,
    UserModel? matchedUser,
  }) = _MatchModel;

  factory MatchModel.fromJson(Map<String, dynamic> json) =>
      _$MatchModelFromJson(json);
}

/// Match Status
enum MatchStatus {
  active,
  unmatched,
  blocked,
  expired,
}

/// Swipe Action Model
@freezed
class SwipeActionModel with _$SwipeActionModel {
  const factory SwipeActionModel({
    required String swipedUserId,
    required SwipeType action,
    DateTime? createdAt,
  }) = _SwipeActionModel;

  factory SwipeActionModel.fromJson(Map<String, dynamic> json) =>
      _$SwipeActionModelFromJson(json);
}

/// Swipe Type
enum SwipeType {
  like,
  dislike,
  superLike,
}

