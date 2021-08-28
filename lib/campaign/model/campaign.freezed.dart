// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'campaign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CampaignTearOff {
  const _$CampaignTearOff();

  _Campaign call(
      {String? id,
      String? name,
      String? image,
      String? description,
      int? donationTarget,
      int? numOfDonatedItems}) {
    return _Campaign(
      id: id,
      name: name,
      image: image,
      description: description,
      donationTarget: donationTarget,
      numOfDonatedItems: numOfDonatedItems,
    );
  }
}

/// @nodoc
const $Campaign = _$CampaignTearOff();

/// @nodoc
mixin _$Campaign {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get donationTarget => throw _privateConstructorUsedError;
  int? get numOfDonatedItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CampaignCopyWith<Campaign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignCopyWith<$Res> {
  factory $CampaignCopyWith(Campaign value, $Res Function(Campaign) then) =
      _$CampaignCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? image,
      String? description,
      int? donationTarget,
      int? numOfDonatedItems});
}

/// @nodoc
class _$CampaignCopyWithImpl<$Res> implements $CampaignCopyWith<$Res> {
  _$CampaignCopyWithImpl(this._value, this._then);

  final Campaign _value;
  // ignore: unused_field
  final $Res Function(Campaign) _then;

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
abstract class _$CampaignCopyWith<$Res> implements $CampaignCopyWith<$Res> {
  factory _$CampaignCopyWith(_Campaign value, $Res Function(_Campaign) then) =
      __$CampaignCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? image,
      String? description,
      int? donationTarget,
      int? numOfDonatedItems});
}

/// @nodoc
class __$CampaignCopyWithImpl<$Res> extends _$CampaignCopyWithImpl<$Res>
    implements _$CampaignCopyWith<$Res> {
  __$CampaignCopyWithImpl(_Campaign _value, $Res Function(_Campaign) _then)
      : super(_value, (v) => _then(v as _Campaign));

  @override
  _Campaign get _value => super._value as _Campaign;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? donationTarget = freezed,
    Object? numOfDonatedItems = freezed,
  }) {
    return _then(_Campaign(
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

class _$_Campaign extends _Campaign {
  const _$_Campaign(
      {this.id,
      this.name,
      this.image,
      this.description,
      this.donationTarget,
      this.numOfDonatedItems})
      : super._();

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final int? donationTarget;
  @override
  final int? numOfDonatedItems;

  @override
  String toString() {
    return 'Campaign(id: $id, name: $name, image: $image, description: $description, donationTarget: $donationTarget, numOfDonatedItems: $numOfDonatedItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Campaign &&
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
  _$CampaignCopyWith<_Campaign> get copyWith =>
      __$CampaignCopyWithImpl<_Campaign>(this, _$identity);
}

abstract class _Campaign extends Campaign {
  const factory _Campaign(
      {String? id,
      String? name,
      String? image,
      String? description,
      int? donationTarget,
      int? numOfDonatedItems}) = _$_Campaign;
  const _Campaign._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get donationTarget => throw _privateConstructorUsedError;
  @override
  int? get numOfDonatedItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CampaignCopyWith<_Campaign> get copyWith =>
      throw _privateConstructorUsedError;
}
