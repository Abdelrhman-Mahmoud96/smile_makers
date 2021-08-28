// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'itemEntity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemEntity _$ItemEntityFromJson(Map<String, dynamic> json) {
  return _ItemEntity.fromJson(json);
}

/// @nodoc
class _$ItemEntityTearOff {
  const _$ItemEntityTearOff();

  _ItemEntity call(
      {String? id,
      String? name,
      String? description,
      String? imgUrl,
      bool? taken,
      @JsonKey(name: 'donation_date') String? date,
      @JsonKey(name: 'donated_user') String? userId,
      @JsonKey(name: 'campaign_name') String? campaignName}) {
    return _ItemEntity(
      id: id,
      name: name,
      description: description,
      imgUrl: imgUrl,
      taken: taken,
      date: date,
      userId: userId,
      campaignName: campaignName,
    );
  }

  ItemEntity fromJson(Map<String, Object> json) {
    return ItemEntity.fromJson(json);
  }
}

/// @nodoc
const $ItemEntity = _$ItemEntityTearOff();

/// @nodoc
mixin _$ItemEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  bool? get taken => throw _privateConstructorUsedError;
  @JsonKey(name: 'donation_date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'donated_user')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaign_name')
  String? get campaignName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemEntityCopyWith<ItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEntityCopyWith<$Res> {
  factory $ItemEntityCopyWith(
          ItemEntity value, $Res Function(ItemEntity) then) =
      _$ItemEntityCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? imgUrl,
      bool? taken,
      @JsonKey(name: 'donation_date') String? date,
      @JsonKey(name: 'donated_user') String? userId,
      @JsonKey(name: 'campaign_name') String? campaignName});
}

/// @nodoc
class _$ItemEntityCopyWithImpl<$Res> implements $ItemEntityCopyWith<$Res> {
  _$ItemEntityCopyWithImpl(this._value, this._then);

  final ItemEntity _value;
  // ignore: unused_field
  final $Res Function(ItemEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imgUrl = freezed,
    Object? taken = freezed,
    Object? date = freezed,
    Object? userId = freezed,
    Object? campaignName = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      taken: taken == freezed
          ? _value.taken
          : taken // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignName: campaignName == freezed
          ? _value.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ItemEntityCopyWith<$Res> implements $ItemEntityCopyWith<$Res> {
  factory _$ItemEntityCopyWith(
          _ItemEntity value, $Res Function(_ItemEntity) then) =
      __$ItemEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? imgUrl,
      bool? taken,
      @JsonKey(name: 'donation_date') String? date,
      @JsonKey(name: 'donated_user') String? userId,
      @JsonKey(name: 'campaign_name') String? campaignName});
}

/// @nodoc
class __$ItemEntityCopyWithImpl<$Res> extends _$ItemEntityCopyWithImpl<$Res>
    implements _$ItemEntityCopyWith<$Res> {
  __$ItemEntityCopyWithImpl(
      _ItemEntity _value, $Res Function(_ItemEntity) _then)
      : super(_value, (v) => _then(v as _ItemEntity));

  @override
  _ItemEntity get _value => super._value as _ItemEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imgUrl = freezed,
    Object? taken = freezed,
    Object? date = freezed,
    Object? userId = freezed,
    Object? campaignName = freezed,
  }) {
    return _then(_ItemEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      taken: taken == freezed
          ? _value.taken
          : taken // ignore: cast_nullable_to_non_nullable
              as bool?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignName: campaignName == freezed
          ? _value.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemEntity extends _ItemEntity {
  const _$_ItemEntity(
      {this.id,
      this.name,
      this.description,
      this.imgUrl,
      this.taken,
      @JsonKey(name: 'donation_date') this.date,
      @JsonKey(name: 'donated_user') this.userId,
      @JsonKey(name: 'campaign_name') this.campaignName})
      : super._();

  factory _$_ItemEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemEntityFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imgUrl;
  @override
  final bool? taken;
  @override
  @JsonKey(name: 'donation_date')
  final String? date;
  @override
  @JsonKey(name: 'donated_user')
  final String? userId;
  @override
  @JsonKey(name: 'campaign_name')
  final String? campaignName;

  @override
  String toString() {
    return 'ItemEntity(id: $id, name: $name, description: $description, imgUrl: $imgUrl, taken: $taken, date: $date, userId: $userId, campaignName: $campaignName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.taken, taken) ||
                const DeepCollectionEquality().equals(other.taken, taken)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.campaignName, campaignName) ||
                const DeepCollectionEquality()
                    .equals(other.campaignName, campaignName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(taken) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(campaignName);

  @JsonKey(ignore: true)
  @override
  _$ItemEntityCopyWith<_ItemEntity> get copyWith =>
      __$ItemEntityCopyWithImpl<_ItemEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemEntityToJson(this);
  }
}

abstract class _ItemEntity extends ItemEntity {
  const factory _ItemEntity(
      {String? id,
      String? name,
      String? description,
      String? imgUrl,
      bool? taken,
      @JsonKey(name: 'donation_date') String? date,
      @JsonKey(name: 'donated_user') String? userId,
      @JsonKey(name: 'campaign_name') String? campaignName}) = _$_ItemEntity;
  const _ItemEntity._() : super._();

  factory _ItemEntity.fromJson(Map<String, dynamic> json) =
      _$_ItemEntity.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get imgUrl => throw _privateConstructorUsedError;
  @override
  bool? get taken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'donation_date')
  String? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'donated_user')
  String? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'campaign_name')
  String? get campaignName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemEntityCopyWith<_ItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
