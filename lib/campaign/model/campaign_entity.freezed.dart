// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'campaign_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignEntity _$CampaignEntityFromJson(Map<String, dynamic> json) {
  return _CampaignEntity.fromJson(json);
}

/// @nodoc
class _$CampaignEntityTearOff {
  const _$CampaignEntityTearOff();

  _CampaignEntity call(
      {String? id,
      String? name,
      String? image,
      String? description,
      @JsonKey(name: 'target') int? donationTarget,
      @JsonKey(name: 'number_of_items') int? numOfDonatedItems}) {
    return _CampaignEntity(
      id: id,
      name: name,
      image: image,
      description: description,
      donationTarget: donationTarget,
      numOfDonatedItems: numOfDonatedItems,
    );
  }

  CampaignEntity fromJson(Map<String, Object> json) {
    return CampaignEntity.fromJson(json);
  }
}

/// @nodoc
const $CampaignEntity = _$CampaignEntityTearOff();

/// @nodoc
mixin _$CampaignEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'target')
  int? get donationTarget => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_items')
  int? get numOfDonatedItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignEntityCopyWith<CampaignEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignEntityCopyWith<$Res> {
  factory $CampaignEntityCopyWith(
          CampaignEntity value, $Res Function(CampaignEntity) then) =
      _$CampaignEntityCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? image,
      String? description,
      @JsonKey(name: 'target') int? donationTarget,
      @JsonKey(name: 'number_of_items') int? numOfDonatedItems});
}

/// @nodoc
class _$CampaignEntityCopyWithImpl<$Res>
    implements $CampaignEntityCopyWith<$Res> {
  _$CampaignEntityCopyWithImpl(this._value, this._then);

  final CampaignEntity _value;
  // ignore: unused_field
  final $Res Function(CampaignEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? donationTarget = freezed,
    Object? numOfDonatedItems = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      donationTarget: donationTarget == freezed
          ? _value.donationTarget
          : donationTarget // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfDonatedItems: numOfDonatedItems == freezed
          ? _value.numOfDonatedItems
          : numOfDonatedItems // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CampaignEntityCopyWith<$Res>
    implements $CampaignEntityCopyWith<$Res> {
  factory _$CampaignEntityCopyWith(
          _CampaignEntity value, $Res Function(_CampaignEntity) then) =
      __$CampaignEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? image,
      String? description,
      @JsonKey(name: 'target') int? donationTarget,
      @JsonKey(name: 'number_of_items') int? numOfDonatedItems});
}

/// @nodoc
class __$CampaignEntityCopyWithImpl<$Res>
    extends _$CampaignEntityCopyWithImpl<$Res>
    implements _$CampaignEntityCopyWith<$Res> {
  __$CampaignEntityCopyWithImpl(
      _CampaignEntity _value, $Res Function(_CampaignEntity) _then)
      : super(_value, (v) => _then(v as _CampaignEntity));

  @override
  _CampaignEntity get _value => super._value as _CampaignEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? donationTarget = freezed,
    Object? numOfDonatedItems = freezed,
  }) {
    return _then(_CampaignEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      donationTarget: donationTarget == freezed
          ? _value.donationTarget
          : donationTarget // ignore: cast_nullable_to_non_nullable
              as int?,
      numOfDonatedItems: numOfDonatedItems == freezed
          ? _value.numOfDonatedItems
          : numOfDonatedItems // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CampaignEntity extends _CampaignEntity {
  const _$_CampaignEntity(
      {this.id,
      this.name,
      this.image,
      this.description,
      @JsonKey(name: 'target') this.donationTarget,
      @JsonKey(name: 'number_of_items') this.numOfDonatedItems})
      : super._();

  factory _$_CampaignEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CampaignEntityFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? description;
  @override
  @JsonKey(name: 'target')
  final int? donationTarget;
  @override
  @JsonKey(name: 'number_of_items')
  final int? numOfDonatedItems;

  @override
  String toString() {
    return 'CampaignEntity(id: $id, name: $name, image: $image, description: $description, donationTarget: $donationTarget, numOfDonatedItems: $numOfDonatedItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CampaignEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.donationTarget, donationTarget) ||
                const DeepCollectionEquality()
                    .equals(other.donationTarget, donationTarget)) &&
            (identical(other.numOfDonatedItems, numOfDonatedItems) ||
                const DeepCollectionEquality()
                    .equals(other.numOfDonatedItems, numOfDonatedItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(donationTarget) ^
      const DeepCollectionEquality().hash(numOfDonatedItems);

  @JsonKey(ignore: true)
  @override
  _$CampaignEntityCopyWith<_CampaignEntity> get copyWith =>
      __$CampaignEntityCopyWithImpl<_CampaignEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CampaignEntityToJson(this);
  }
}

abstract class _CampaignEntity extends CampaignEntity {
  const factory _CampaignEntity(
          {String? id,
          String? name,
          String? image,
          String? description,
          @JsonKey(name: 'target') int? donationTarget,
          @JsonKey(name: 'number_of_items') int? numOfDonatedItems}) =
      _$_CampaignEntity;
  const _CampaignEntity._() : super._();

  factory _CampaignEntity.fromJson(Map<String, dynamic> json) =
      _$_CampaignEntity.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'target')
  int? get donationTarget => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'number_of_items')
  int? get numOfDonatedItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CampaignEntityCopyWith<_CampaignEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
