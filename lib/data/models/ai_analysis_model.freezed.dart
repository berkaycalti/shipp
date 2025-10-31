// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_analysis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AIAnalysisModel _$AIAnalysisModelFromJson(Map<String, dynamic> json) {
  return _AIAnalysisModel.fromJson(json);
}

/// @nodoc
mixin _$AIAnalysisModel {
  String get analysis =>
      throw _privateConstructorUsedError; // AI-generated analysis text
  double get score =>
      throw _privateConstructorUsedError; // Compatibility/analysis score (0-100)
  Map<String, dynamic>? get chartData =>
      throw _privateConstructorUsedError; // Birth chart data
  Map<String, dynamic>? get details =>
      throw _privateConstructorUsedError; // Additional analysis details
  String? get zodiacSign =>
      throw _privateConstructorUsedError; // Calculated zodiac sign
  List<String>? get keyInsights =>
      throw _privateConstructorUsedError; // Key insights from AI
  DateTime? get analyzedAt => throw _privateConstructorUsedError;

  /// Serializes this AIAnalysisModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AIAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AIAnalysisModelCopyWith<AIAnalysisModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AIAnalysisModelCopyWith<$Res> {
  factory $AIAnalysisModelCopyWith(
    AIAnalysisModel value,
    $Res Function(AIAnalysisModel) then,
  ) = _$AIAnalysisModelCopyWithImpl<$Res, AIAnalysisModel>;
  @useResult
  $Res call({
    String analysis,
    double score,
    Map<String, dynamic>? chartData,
    Map<String, dynamic>? details,
    String? zodiacSign,
    List<String>? keyInsights,
    DateTime? analyzedAt,
  });
}

/// @nodoc
class _$AIAnalysisModelCopyWithImpl<$Res, $Val extends AIAnalysisModel>
    implements $AIAnalysisModelCopyWith<$Res> {
  _$AIAnalysisModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AIAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysis = null,
    Object? score = null,
    Object? chartData = freezed,
    Object? details = freezed,
    Object? zodiacSign = freezed,
    Object? keyInsights = freezed,
    Object? analyzedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            analysis:
                null == analysis
                    ? _value.analysis
                    : analysis // ignore: cast_nullable_to_non_nullable
                        as String,
            score:
                null == score
                    ? _value.score
                    : score // ignore: cast_nullable_to_non_nullable
                        as double,
            chartData:
                freezed == chartData
                    ? _value.chartData
                    : chartData // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            details:
                freezed == details
                    ? _value.details
                    : details // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            zodiacSign:
                freezed == zodiacSign
                    ? _value.zodiacSign
                    : zodiacSign // ignore: cast_nullable_to_non_nullable
                        as String?,
            keyInsights:
                freezed == keyInsights
                    ? _value.keyInsights
                    : keyInsights // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            analyzedAt:
                freezed == analyzedAt
                    ? _value.analyzedAt
                    : analyzedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AIAnalysisModelImplCopyWith<$Res>
    implements $AIAnalysisModelCopyWith<$Res> {
  factory _$$AIAnalysisModelImplCopyWith(
    _$AIAnalysisModelImpl value,
    $Res Function(_$AIAnalysisModelImpl) then,
  ) = __$$AIAnalysisModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String analysis,
    double score,
    Map<String, dynamic>? chartData,
    Map<String, dynamic>? details,
    String? zodiacSign,
    List<String>? keyInsights,
    DateTime? analyzedAt,
  });
}

/// @nodoc
class __$$AIAnalysisModelImplCopyWithImpl<$Res>
    extends _$AIAnalysisModelCopyWithImpl<$Res, _$AIAnalysisModelImpl>
    implements _$$AIAnalysisModelImplCopyWith<$Res> {
  __$$AIAnalysisModelImplCopyWithImpl(
    _$AIAnalysisModelImpl _value,
    $Res Function(_$AIAnalysisModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AIAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysis = null,
    Object? score = null,
    Object? chartData = freezed,
    Object? details = freezed,
    Object? zodiacSign = freezed,
    Object? keyInsights = freezed,
    Object? analyzedAt = freezed,
  }) {
    return _then(
      _$AIAnalysisModelImpl(
        analysis:
            null == analysis
                ? _value.analysis
                : analysis // ignore: cast_nullable_to_non_nullable
                    as String,
        score:
            null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                    as double,
        chartData:
            freezed == chartData
                ? _value._chartData
                : chartData // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        details:
            freezed == details
                ? _value._details
                : details // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        zodiacSign:
            freezed == zodiacSign
                ? _value.zodiacSign
                : zodiacSign // ignore: cast_nullable_to_non_nullable
                    as String?,
        keyInsights:
            freezed == keyInsights
                ? _value._keyInsights
                : keyInsights // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        analyzedAt:
            freezed == analyzedAt
                ? _value.analyzedAt
                : analyzedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AIAnalysisModelImpl implements _AIAnalysisModel {
  const _$AIAnalysisModelImpl({
    required this.analysis,
    required this.score,
    final Map<String, dynamic>? chartData,
    final Map<String, dynamic>? details,
    this.zodiacSign,
    final List<String>? keyInsights,
    this.analyzedAt,
  }) : _chartData = chartData,
       _details = details,
       _keyInsights = keyInsights;

  factory _$AIAnalysisModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AIAnalysisModelImplFromJson(json);

  @override
  final String analysis;
  // AI-generated analysis text
  @override
  final double score;
  // Compatibility/analysis score (0-100)
  final Map<String, dynamic>? _chartData;
  // Compatibility/analysis score (0-100)
  @override
  Map<String, dynamic>? get chartData {
    final value = _chartData;
    if (value == null) return null;
    if (_chartData is EqualUnmodifiableMapView) return _chartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  // Birth chart data
  final Map<String, dynamic>? _details;
  // Birth chart data
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  // Additional analysis details
  @override
  final String? zodiacSign;
  // Calculated zodiac sign
  final List<String>? _keyInsights;
  // Calculated zodiac sign
  @override
  List<String>? get keyInsights {
    final value = _keyInsights;
    if (value == null) return null;
    if (_keyInsights is EqualUnmodifiableListView) return _keyInsights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  // Key insights from AI
  @override
  final DateTime? analyzedAt;

  @override
  String toString() {
    return 'AIAnalysisModel(analysis: $analysis, score: $score, chartData: $chartData, details: $details, zodiacSign: $zodiacSign, keyInsights: $keyInsights, analyzedAt: $analyzedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AIAnalysisModelImpl &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(
              other._chartData,
              _chartData,
            ) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            (identical(other.zodiacSign, zodiacSign) ||
                other.zodiacSign == zodiacSign) &&
            const DeepCollectionEquality().equals(
              other._keyInsights,
              _keyInsights,
            ) &&
            (identical(other.analyzedAt, analyzedAt) ||
                other.analyzedAt == analyzedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    analysis,
    score,
    const DeepCollectionEquality().hash(_chartData),
    const DeepCollectionEquality().hash(_details),
    zodiacSign,
    const DeepCollectionEquality().hash(_keyInsights),
    analyzedAt,
  );

  /// Create a copy of AIAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AIAnalysisModelImplCopyWith<_$AIAnalysisModelImpl> get copyWith =>
      __$$AIAnalysisModelImplCopyWithImpl<_$AIAnalysisModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AIAnalysisModelImplToJson(this);
  }
}

abstract class _AIAnalysisModel implements AIAnalysisModel {
  const factory _AIAnalysisModel({
    required final String analysis,
    required final double score,
    final Map<String, dynamic>? chartData,
    final Map<String, dynamic>? details,
    final String? zodiacSign,
    final List<String>? keyInsights,
    final DateTime? analyzedAt,
  }) = _$AIAnalysisModelImpl;

  factory _AIAnalysisModel.fromJson(Map<String, dynamic> json) =
      _$AIAnalysisModelImpl.fromJson;

  @override
  String get analysis; // AI-generated analysis text
  @override
  double get score; // Compatibility/analysis score (0-100)
  @override
  Map<String, dynamic>? get chartData; // Birth chart data
  @override
  Map<String, dynamic>? get details; // Additional analysis details
  @override
  String? get zodiacSign; // Calculated zodiac sign
  @override
  List<String>? get keyInsights; // Key insights from AI
  @override
  DateTime? get analyzedAt;

  /// Create a copy of AIAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AIAnalysisModelImplCopyWith<_$AIAnalysisModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BirthChartDataModel _$BirthChartDataModelFromJson(Map<String, dynamic> json) {
  return _BirthChartDataModel.fromJson(json);
}

/// @nodoc
mixin _$BirthChartDataModel {
  List<PlanetPositionModel> get planets => throw _privateConstructorUsedError;
  List<HouseModel> get houses => throw _privateConstructorUsedError;
  List<AspectModel> get aspects => throw _privateConstructorUsedError;
  double get ascendant =>
      throw _privateConstructorUsedError; // Rising sign degree
  double get midheaven => throw _privateConstructorUsedError;

  /// Serializes this BirthChartDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BirthChartDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirthChartDataModelCopyWith<BirthChartDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthChartDataModelCopyWith<$Res> {
  factory $BirthChartDataModelCopyWith(
    BirthChartDataModel value,
    $Res Function(BirthChartDataModel) then,
  ) = _$BirthChartDataModelCopyWithImpl<$Res, BirthChartDataModel>;
  @useResult
  $Res call({
    List<PlanetPositionModel> planets,
    List<HouseModel> houses,
    List<AspectModel> aspects,
    double ascendant,
    double midheaven,
  });
}

/// @nodoc
class _$BirthChartDataModelCopyWithImpl<$Res, $Val extends BirthChartDataModel>
    implements $BirthChartDataModelCopyWith<$Res> {
  _$BirthChartDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BirthChartDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planets = null,
    Object? houses = null,
    Object? aspects = null,
    Object? ascendant = null,
    Object? midheaven = null,
  }) {
    return _then(
      _value.copyWith(
            planets:
                null == planets
                    ? _value.planets
                    : planets // ignore: cast_nullable_to_non_nullable
                        as List<PlanetPositionModel>,
            houses:
                null == houses
                    ? _value.houses
                    : houses // ignore: cast_nullable_to_non_nullable
                        as List<HouseModel>,
            aspects:
                null == aspects
                    ? _value.aspects
                    : aspects // ignore: cast_nullable_to_non_nullable
                        as List<AspectModel>,
            ascendant:
                null == ascendant
                    ? _value.ascendant
                    : ascendant // ignore: cast_nullable_to_non_nullable
                        as double,
            midheaven:
                null == midheaven
                    ? _value.midheaven
                    : midheaven // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BirthChartDataModelImplCopyWith<$Res>
    implements $BirthChartDataModelCopyWith<$Res> {
  factory _$$BirthChartDataModelImplCopyWith(
    _$BirthChartDataModelImpl value,
    $Res Function(_$BirthChartDataModelImpl) then,
  ) = __$$BirthChartDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<PlanetPositionModel> planets,
    List<HouseModel> houses,
    List<AspectModel> aspects,
    double ascendant,
    double midheaven,
  });
}

/// @nodoc
class __$$BirthChartDataModelImplCopyWithImpl<$Res>
    extends _$BirthChartDataModelCopyWithImpl<$Res, _$BirthChartDataModelImpl>
    implements _$$BirthChartDataModelImplCopyWith<$Res> {
  __$$BirthChartDataModelImplCopyWithImpl(
    _$BirthChartDataModelImpl _value,
    $Res Function(_$BirthChartDataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BirthChartDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planets = null,
    Object? houses = null,
    Object? aspects = null,
    Object? ascendant = null,
    Object? midheaven = null,
  }) {
    return _then(
      _$BirthChartDataModelImpl(
        planets:
            null == planets
                ? _value._planets
                : planets // ignore: cast_nullable_to_non_nullable
                    as List<PlanetPositionModel>,
        houses:
            null == houses
                ? _value._houses
                : houses // ignore: cast_nullable_to_non_nullable
                    as List<HouseModel>,
        aspects:
            null == aspects
                ? _value._aspects
                : aspects // ignore: cast_nullable_to_non_nullable
                    as List<AspectModel>,
        ascendant:
            null == ascendant
                ? _value.ascendant
                : ascendant // ignore: cast_nullable_to_non_nullable
                    as double,
        midheaven:
            null == midheaven
                ? _value.midheaven
                : midheaven // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BirthChartDataModelImpl implements _BirthChartDataModel {
  const _$BirthChartDataModelImpl({
    required final List<PlanetPositionModel> planets,
    required final List<HouseModel> houses,
    required final List<AspectModel> aspects,
    required this.ascendant,
    required this.midheaven,
  }) : _planets = planets,
       _houses = houses,
       _aspects = aspects;

  factory _$BirthChartDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirthChartDataModelImplFromJson(json);

  final List<PlanetPositionModel> _planets;
  @override
  List<PlanetPositionModel> get planets {
    if (_planets is EqualUnmodifiableListView) return _planets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_planets);
  }

  final List<HouseModel> _houses;
  @override
  List<HouseModel> get houses {
    if (_houses is EqualUnmodifiableListView) return _houses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_houses);
  }

  final List<AspectModel> _aspects;
  @override
  List<AspectModel> get aspects {
    if (_aspects is EqualUnmodifiableListView) return _aspects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aspects);
  }

  @override
  final double ascendant;
  // Rising sign degree
  @override
  final double midheaven;

  @override
  String toString() {
    return 'BirthChartDataModel(planets: $planets, houses: $houses, aspects: $aspects, ascendant: $ascendant, midheaven: $midheaven)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirthChartDataModelImpl &&
            const DeepCollectionEquality().equals(other._planets, _planets) &&
            const DeepCollectionEquality().equals(other._houses, _houses) &&
            const DeepCollectionEquality().equals(other._aspects, _aspects) &&
            (identical(other.ascendant, ascendant) ||
                other.ascendant == ascendant) &&
            (identical(other.midheaven, midheaven) ||
                other.midheaven == midheaven));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_planets),
    const DeepCollectionEquality().hash(_houses),
    const DeepCollectionEquality().hash(_aspects),
    ascendant,
    midheaven,
  );

  /// Create a copy of BirthChartDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirthChartDataModelImplCopyWith<_$BirthChartDataModelImpl> get copyWith =>
      __$$BirthChartDataModelImplCopyWithImpl<_$BirthChartDataModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BirthChartDataModelImplToJson(this);
  }
}

abstract class _BirthChartDataModel implements BirthChartDataModel {
  const factory _BirthChartDataModel({
    required final List<PlanetPositionModel> planets,
    required final List<HouseModel> houses,
    required final List<AspectModel> aspects,
    required final double ascendant,
    required final double midheaven,
  }) = _$BirthChartDataModelImpl;

  factory _BirthChartDataModel.fromJson(Map<String, dynamic> json) =
      _$BirthChartDataModelImpl.fromJson;

  @override
  List<PlanetPositionModel> get planets;
  @override
  List<HouseModel> get houses;
  @override
  List<AspectModel> get aspects;
  @override
  double get ascendant; // Rising sign degree
  @override
  double get midheaven;

  /// Create a copy of BirthChartDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirthChartDataModelImplCopyWith<_$BirthChartDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlanetPositionModel _$PlanetPositionModelFromJson(Map<String, dynamic> json) {
  return _PlanetPositionModel.fromJson(json);
}

/// @nodoc
mixin _$PlanetPositionModel {
  String get planet =>
      throw _privateConstructorUsedError; // Planet name (Sun, Moon, etc.)
  double get degree =>
      throw _privateConstructorUsedError; // Position in degrees
  String get sign => throw _privateConstructorUsedError; // Zodiac sign
  int get house => throw _privateConstructorUsedError;

  /// Serializes this PlanetPositionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanetPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanetPositionModelCopyWith<PlanetPositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetPositionModelCopyWith<$Res> {
  factory $PlanetPositionModelCopyWith(
    PlanetPositionModel value,
    $Res Function(PlanetPositionModel) then,
  ) = _$PlanetPositionModelCopyWithImpl<$Res, PlanetPositionModel>;
  @useResult
  $Res call({String planet, double degree, String sign, int house});
}

/// @nodoc
class _$PlanetPositionModelCopyWithImpl<$Res, $Val extends PlanetPositionModel>
    implements $PlanetPositionModelCopyWith<$Res> {
  _$PlanetPositionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanetPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planet = null,
    Object? degree = null,
    Object? sign = null,
    Object? house = null,
  }) {
    return _then(
      _value.copyWith(
            planet:
                null == planet
                    ? _value.planet
                    : planet // ignore: cast_nullable_to_non_nullable
                        as String,
            degree:
                null == degree
                    ? _value.degree
                    : degree // ignore: cast_nullable_to_non_nullable
                        as double,
            sign:
                null == sign
                    ? _value.sign
                    : sign // ignore: cast_nullable_to_non_nullable
                        as String,
            house:
                null == house
                    ? _value.house
                    : house // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlanetPositionModelImplCopyWith<$Res>
    implements $PlanetPositionModelCopyWith<$Res> {
  factory _$$PlanetPositionModelImplCopyWith(
    _$PlanetPositionModelImpl value,
    $Res Function(_$PlanetPositionModelImpl) then,
  ) = __$$PlanetPositionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String planet, double degree, String sign, int house});
}

/// @nodoc
class __$$PlanetPositionModelImplCopyWithImpl<$Res>
    extends _$PlanetPositionModelCopyWithImpl<$Res, _$PlanetPositionModelImpl>
    implements _$$PlanetPositionModelImplCopyWith<$Res> {
  __$$PlanetPositionModelImplCopyWithImpl(
    _$PlanetPositionModelImpl _value,
    $Res Function(_$PlanetPositionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlanetPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planet = null,
    Object? degree = null,
    Object? sign = null,
    Object? house = null,
  }) {
    return _then(
      _$PlanetPositionModelImpl(
        planet:
            null == planet
                ? _value.planet
                : planet // ignore: cast_nullable_to_non_nullable
                    as String,
        degree:
            null == degree
                ? _value.degree
                : degree // ignore: cast_nullable_to_non_nullable
                    as double,
        sign:
            null == sign
                ? _value.sign
                : sign // ignore: cast_nullable_to_non_nullable
                    as String,
        house:
            null == house
                ? _value.house
                : house // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanetPositionModelImpl implements _PlanetPositionModel {
  const _$PlanetPositionModelImpl({
    required this.planet,
    required this.degree,
    required this.sign,
    required this.house,
  });

  factory _$PlanetPositionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanetPositionModelImplFromJson(json);

  @override
  final String planet;
  // Planet name (Sun, Moon, etc.)
  @override
  final double degree;
  // Position in degrees
  @override
  final String sign;
  // Zodiac sign
  @override
  final int house;

  @override
  String toString() {
    return 'PlanetPositionModel(planet: $planet, degree: $degree, sign: $sign, house: $house)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanetPositionModelImpl &&
            (identical(other.planet, planet) || other.planet == planet) &&
            (identical(other.degree, degree) || other.degree == degree) &&
            (identical(other.sign, sign) || other.sign == sign) &&
            (identical(other.house, house) || other.house == house));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, planet, degree, sign, house);

  /// Create a copy of PlanetPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanetPositionModelImplCopyWith<_$PlanetPositionModelImpl> get copyWith =>
      __$$PlanetPositionModelImplCopyWithImpl<_$PlanetPositionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanetPositionModelImplToJson(this);
  }
}

abstract class _PlanetPositionModel implements PlanetPositionModel {
  const factory _PlanetPositionModel({
    required final String planet,
    required final double degree,
    required final String sign,
    required final int house,
  }) = _$PlanetPositionModelImpl;

  factory _PlanetPositionModel.fromJson(Map<String, dynamic> json) =
      _$PlanetPositionModelImpl.fromJson;

  @override
  String get planet; // Planet name (Sun, Moon, etc.)
  @override
  double get degree; // Position in degrees
  @override
  String get sign; // Zodiac sign
  @override
  int get house;

  /// Create a copy of PlanetPositionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanetPositionModelImplCopyWith<_$PlanetPositionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HouseModel _$HouseModelFromJson(Map<String, dynamic> json) {
  return _HouseModel.fromJson(json);
}

/// @nodoc
mixin _$HouseModel {
  int get houseNumber => throw _privateConstructorUsedError; // 1-12
  double get cuspDegree =>
      throw _privateConstructorUsedError; // House cusp degree
  String get sign => throw _privateConstructorUsedError;

  /// Serializes this HouseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HouseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HouseModelCopyWith<HouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseModelCopyWith<$Res> {
  factory $HouseModelCopyWith(
    HouseModel value,
    $Res Function(HouseModel) then,
  ) = _$HouseModelCopyWithImpl<$Res, HouseModel>;
  @useResult
  $Res call({int houseNumber, double cuspDegree, String sign});
}

/// @nodoc
class _$HouseModelCopyWithImpl<$Res, $Val extends HouseModel>
    implements $HouseModelCopyWith<$Res> {
  _$HouseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HouseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseNumber = null,
    Object? cuspDegree = null,
    Object? sign = null,
  }) {
    return _then(
      _value.copyWith(
            houseNumber:
                null == houseNumber
                    ? _value.houseNumber
                    : houseNumber // ignore: cast_nullable_to_non_nullable
                        as int,
            cuspDegree:
                null == cuspDegree
                    ? _value.cuspDegree
                    : cuspDegree // ignore: cast_nullable_to_non_nullable
                        as double,
            sign:
                null == sign
                    ? _value.sign
                    : sign // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HouseModelImplCopyWith<$Res>
    implements $HouseModelCopyWith<$Res> {
  factory _$$HouseModelImplCopyWith(
    _$HouseModelImpl value,
    $Res Function(_$HouseModelImpl) then,
  ) = __$$HouseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int houseNumber, double cuspDegree, String sign});
}

/// @nodoc
class __$$HouseModelImplCopyWithImpl<$Res>
    extends _$HouseModelCopyWithImpl<$Res, _$HouseModelImpl>
    implements _$$HouseModelImplCopyWith<$Res> {
  __$$HouseModelImplCopyWithImpl(
    _$HouseModelImpl _value,
    $Res Function(_$HouseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HouseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseNumber = null,
    Object? cuspDegree = null,
    Object? sign = null,
  }) {
    return _then(
      _$HouseModelImpl(
        houseNumber:
            null == houseNumber
                ? _value.houseNumber
                : houseNumber // ignore: cast_nullable_to_non_nullable
                    as int,
        cuspDegree:
            null == cuspDegree
                ? _value.cuspDegree
                : cuspDegree // ignore: cast_nullable_to_non_nullable
                    as double,
        sign:
            null == sign
                ? _value.sign
                : sign // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseModelImpl implements _HouseModel {
  const _$HouseModelImpl({
    required this.houseNumber,
    required this.cuspDegree,
    required this.sign,
  });

  factory _$HouseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseModelImplFromJson(json);

  @override
  final int houseNumber;
  // 1-12
  @override
  final double cuspDegree;
  // House cusp degree
  @override
  final String sign;

  @override
  String toString() {
    return 'HouseModel(houseNumber: $houseNumber, cuspDegree: $cuspDegree, sign: $sign)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseModelImpl &&
            (identical(other.houseNumber, houseNumber) ||
                other.houseNumber == houseNumber) &&
            (identical(other.cuspDegree, cuspDegree) ||
                other.cuspDegree == cuspDegree) &&
            (identical(other.sign, sign) || other.sign == sign));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, houseNumber, cuspDegree, sign);

  /// Create a copy of HouseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseModelImplCopyWith<_$HouseModelImpl> get copyWith =>
      __$$HouseModelImplCopyWithImpl<_$HouseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseModelImplToJson(this);
  }
}

abstract class _HouseModel implements HouseModel {
  const factory _HouseModel({
    required final int houseNumber,
    required final double cuspDegree,
    required final String sign,
  }) = _$HouseModelImpl;

  factory _HouseModel.fromJson(Map<String, dynamic> json) =
      _$HouseModelImpl.fromJson;

  @override
  int get houseNumber; // 1-12
  @override
  double get cuspDegree; // House cusp degree
  @override
  String get sign;

  /// Create a copy of HouseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseModelImplCopyWith<_$HouseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AspectModel _$AspectModelFromJson(Map<String, dynamic> json) {
  return _AspectModel.fromJson(json);
}

/// @nodoc
mixin _$AspectModel {
  String get planet1 => throw _privateConstructorUsedError;
  String get planet2 => throw _privateConstructorUsedError;
  String get aspectType =>
      throw _privateConstructorUsedError; // Conjunction, Opposition, etc.
  double get orb => throw _privateConstructorUsedError;

  /// Serializes this AspectModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AspectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AspectModelCopyWith<AspectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AspectModelCopyWith<$Res> {
  factory $AspectModelCopyWith(
    AspectModel value,
    $Res Function(AspectModel) then,
  ) = _$AspectModelCopyWithImpl<$Res, AspectModel>;
  @useResult
  $Res call({String planet1, String planet2, String aspectType, double orb});
}

/// @nodoc
class _$AspectModelCopyWithImpl<$Res, $Val extends AspectModel>
    implements $AspectModelCopyWith<$Res> {
  _$AspectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AspectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planet1 = null,
    Object? planet2 = null,
    Object? aspectType = null,
    Object? orb = null,
  }) {
    return _then(
      _value.copyWith(
            planet1:
                null == planet1
                    ? _value.planet1
                    : planet1 // ignore: cast_nullable_to_non_nullable
                        as String,
            planet2:
                null == planet2
                    ? _value.planet2
                    : planet2 // ignore: cast_nullable_to_non_nullable
                        as String,
            aspectType:
                null == aspectType
                    ? _value.aspectType
                    : aspectType // ignore: cast_nullable_to_non_nullable
                        as String,
            orb:
                null == orb
                    ? _value.orb
                    : orb // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AspectModelImplCopyWith<$Res>
    implements $AspectModelCopyWith<$Res> {
  factory _$$AspectModelImplCopyWith(
    _$AspectModelImpl value,
    $Res Function(_$AspectModelImpl) then,
  ) = __$$AspectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String planet1, String planet2, String aspectType, double orb});
}

/// @nodoc
class __$$AspectModelImplCopyWithImpl<$Res>
    extends _$AspectModelCopyWithImpl<$Res, _$AspectModelImpl>
    implements _$$AspectModelImplCopyWith<$Res> {
  __$$AspectModelImplCopyWithImpl(
    _$AspectModelImpl _value,
    $Res Function(_$AspectModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AspectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planet1 = null,
    Object? planet2 = null,
    Object? aspectType = null,
    Object? orb = null,
  }) {
    return _then(
      _$AspectModelImpl(
        planet1:
            null == planet1
                ? _value.planet1
                : planet1 // ignore: cast_nullable_to_non_nullable
                    as String,
        planet2:
            null == planet2
                ? _value.planet2
                : planet2 // ignore: cast_nullable_to_non_nullable
                    as String,
        aspectType:
            null == aspectType
                ? _value.aspectType
                : aspectType // ignore: cast_nullable_to_non_nullable
                    as String,
        orb:
            null == orb
                ? _value.orb
                : orb // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AspectModelImpl implements _AspectModel {
  const _$AspectModelImpl({
    required this.planet1,
    required this.planet2,
    required this.aspectType,
    required this.orb,
  });

  factory _$AspectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AspectModelImplFromJson(json);

  @override
  final String planet1;
  @override
  final String planet2;
  @override
  final String aspectType;
  // Conjunction, Opposition, etc.
  @override
  final double orb;

  @override
  String toString() {
    return 'AspectModel(planet1: $planet1, planet2: $planet2, aspectType: $aspectType, orb: $orb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AspectModelImpl &&
            (identical(other.planet1, planet1) || other.planet1 == planet1) &&
            (identical(other.planet2, planet2) || other.planet2 == planet2) &&
            (identical(other.aspectType, aspectType) ||
                other.aspectType == aspectType) &&
            (identical(other.orb, orb) || other.orb == orb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, planet1, planet2, aspectType, orb);

  /// Create a copy of AspectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AspectModelImplCopyWith<_$AspectModelImpl> get copyWith =>
      __$$AspectModelImplCopyWithImpl<_$AspectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AspectModelImplToJson(this);
  }
}

abstract class _AspectModel implements AspectModel {
  const factory _AspectModel({
    required final String planet1,
    required final String planet2,
    required final String aspectType,
    required final double orb,
  }) = _$AspectModelImpl;

  factory _AspectModel.fromJson(Map<String, dynamic> json) =
      _$AspectModelImpl.fromJson;

  @override
  String get planet1;
  @override
  String get planet2;
  @override
  String get aspectType; // Conjunction, Opposition, etc.
  @override
  double get orb;

  /// Create a copy of AspectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AspectModelImplCopyWith<_$AspectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
