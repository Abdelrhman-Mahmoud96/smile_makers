// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'campaigns_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CampaignsEventTearOff {
  const _$CampaignsEventTearOff();

  LoadCampaigns loadCampaign() {
    return const LoadCampaigns();
  }

  CampaignsUpdated campaignsUpdated(List<Campaign> campaigns) {
    return CampaignsUpdated(
      campaigns,
    );
  }

  UpdateDonationItemCount updateDonationItemCount(String? id, int? newValue) {
    return UpdateDonationItemCount(
      id,
      newValue,
    );
  }

  AddParticipant addParticipant(String? id, String? userId) {
    return AddParticipant(
      id,
      userId,
    );
  }

  LoadUserCampaignsList loadUserCampaignsList(String userId) {
    return LoadUserCampaignsList(
      userId,
    );
  }

  UserCampaignsListUpdated userCampaignsListUpdated(List<Campaign> campaigns) {
    return UserCampaignsListUpdated(
      campaigns,
    );
  }
}

/// @nodoc
const $CampaignsEvent = _$CampaignsEventTearOff();

/// @nodoc
mixin _$CampaignsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCampaign,
    required TResult Function(List<Campaign> campaigns) campaignsUpdated,
    required TResult Function(String? id, int? newValue)
        updateDonationItemCount,
    required TResult Function(String? id, String? userId) addParticipant,
    required TResult Function(String userId) loadUserCampaignsList,
    required TResult Function(List<Campaign> campaigns)
        userCampaignsListUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCampaign,
    TResult Function(List<Campaign> campaigns)? campaignsUpdated,
    TResult Function(String? id, int? newValue)? updateDonationItemCount,
    TResult Function(String? id, String? userId)? addParticipant,
    TResult Function(String userId)? loadUserCampaignsList,
    TResult Function(List<Campaign> campaigns)? userCampaignsListUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaigns value) loadCampaign,
    required TResult Function(CampaignsUpdated value) campaignsUpdated,
    required TResult Function(UpdateDonationItemCount value)
        updateDonationItemCount,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(LoadUserCampaignsList value)
        loadUserCampaignsList,
    required TResult Function(UserCampaignsListUpdated value)
        userCampaignsListUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaigns value)? loadCampaign,
    TResult Function(CampaignsUpdated value)? campaignsUpdated,
    TResult Function(UpdateDonationItemCount value)? updateDonationItemCount,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(LoadUserCampaignsList value)? loadUserCampaignsList,
    TResult Function(UserCampaignsListUpdated value)? userCampaignsListUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignsEventCopyWith<$Res> {
  factory $CampaignsEventCopyWith(
          CampaignsEvent value, $Res Function(CampaignsEvent) then) =
      _$CampaignsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CampaignsEventCopyWithImpl<$Res>
    implements $CampaignsEventCopyWith<$Res> {
  _$CampaignsEventCopyWithImpl(this._value, this._then);

  final CampaignsEvent _value;
  // ignore: unused_field
  final $Res Function(CampaignsEvent) _then;
}

/// @nodoc
abstract class $LoadCampaignsCopyWith<$Res> {
  factory $LoadCampaignsCopyWith(
          LoadCampaigns value, $Res Function(LoadCampaigns) then) =
      _$LoadCampaignsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadCampaignsCopyWithImpl<$Res>
    extends _$CampaignsEventCopyWithImpl<$Res>
    implements $LoadCampaignsCopyWith<$Res> {
  _$LoadCampaignsCopyWithImpl(
      LoadCampaigns _value, $Res Function(LoadCampaigns) _then)
      : super(_value, (v) => _then(v as LoadCampaigns));

  @override
  LoadCampaigns get _value => super._value as LoadCampaigns;
}

/// @nodoc

class _$LoadCampaigns implements LoadCampaigns {
  const _$LoadCampaigns();

  @override
  String toString() {
    return 'CampaignsEvent.loadCampaign()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadCampaigns);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCampaign,
    required TResult Function(List<Campaign> campaigns) campaignsUpdated,
    required TResult Function(String? id, int? newValue)
        updateDonationItemCount,
    required TResult Function(String? id, String? userId) addParticipant,
    required TResult Function(String userId) loadUserCampaignsList,
    required TResult Function(List<Campaign> campaigns)
        userCampaignsListUpdated,
  }) {
    return loadCampaign();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCampaign,
    TResult Function(List<Campaign> campaigns)? campaignsUpdated,
    TResult Function(String? id, int? newValue)? updateDonationItemCount,
    TResult Function(String? id, String? userId)? addParticipant,
    TResult Function(String userId)? loadUserCampaignsList,
    TResult Function(List<Campaign> campaigns)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (loadCampaign != null) {
      return loadCampaign();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaigns value) loadCampaign,
    required TResult Function(CampaignsUpdated value) campaignsUpdated,
    required TResult Function(UpdateDonationItemCount value)
        updateDonationItemCount,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(LoadUserCampaignsList value)
        loadUserCampaignsList,
    required TResult Function(UserCampaignsListUpdated value)
        userCampaignsListUpdated,
  }) {
    return loadCampaign(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaigns value)? loadCampaign,
    TResult Function(CampaignsUpdated value)? campaignsUpdated,
    TResult Function(UpdateDonationItemCount value)? updateDonationItemCount,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(LoadUserCampaignsList value)? loadUserCampaignsList,
    TResult Function(UserCampaignsListUpdated value)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (loadCampaign != null) {
      return loadCampaign(this);
    }
    return orElse();
  }
}

abstract class LoadCampaigns implements CampaignsEvent {
  const factory LoadCampaigns() = _$LoadCampaigns;
}

/// @nodoc
abstract class $CampaignsUpdatedCopyWith<$Res> {
  factory $CampaignsUpdatedCopyWith(
          CampaignsUpdated value, $Res Function(CampaignsUpdated) then) =
      _$CampaignsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Campaign> campaigns});
}

/// @nodoc
class _$CampaignsUpdatedCopyWithImpl<$Res>
    extends _$CampaignsEventCopyWithImpl<$Res>
    implements $CampaignsUpdatedCopyWith<$Res> {
  _$CampaignsUpdatedCopyWithImpl(
      CampaignsUpdated _value, $Res Function(CampaignsUpdated) _then)
      : super(_value, (v) => _then(v as CampaignsUpdated));

  @override
  CampaignsUpdated get _value => super._value as CampaignsUpdated;

  @override
  $Res call({
    Object? campaigns = freezed,
  }) {
    return _then(CampaignsUpdated(
      campaigns == freezed
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<Campaign>,
    ));
  }
}

/// @nodoc

class _$CampaignsUpdated implements CampaignsUpdated {
  const _$CampaignsUpdated(this.campaigns);

  @override
  final List<Campaign> campaigns;

  @override
  String toString() {
    return 'CampaignsEvent.campaignsUpdated(campaigns: $campaigns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CampaignsUpdated &&
            (identical(other.campaigns, campaigns) ||
                const DeepCollectionEquality()
                    .equals(other.campaigns, campaigns)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(campaigns);

  @JsonKey(ignore: true)
  @override
  $CampaignsUpdatedCopyWith<CampaignsUpdated> get copyWith =>
      _$CampaignsUpdatedCopyWithImpl<CampaignsUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCampaign,
    required TResult Function(List<Campaign> campaigns) campaignsUpdated,
    required TResult Function(String? id, int? newValue)
        updateDonationItemCount,
    required TResult Function(String? id, String? userId) addParticipant,
    required TResult Function(String userId) loadUserCampaignsList,
    required TResult Function(List<Campaign> campaigns)
        userCampaignsListUpdated,
  }) {
    return campaignsUpdated(campaigns);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCampaign,
    TResult Function(List<Campaign> campaigns)? campaignsUpdated,
    TResult Function(String? id, int? newValue)? updateDonationItemCount,
    TResult Function(String? id, String? userId)? addParticipant,
    TResult Function(String userId)? loadUserCampaignsList,
    TResult Function(List<Campaign> campaigns)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (campaignsUpdated != null) {
      return campaignsUpdated(campaigns);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaigns value) loadCampaign,
    required TResult Function(CampaignsUpdated value) campaignsUpdated,
    required TResult Function(UpdateDonationItemCount value)
        updateDonationItemCount,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(LoadUserCampaignsList value)
        loadUserCampaignsList,
    required TResult Function(UserCampaignsListUpdated value)
        userCampaignsListUpdated,
  }) {
    return campaignsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaigns value)? loadCampaign,
    TResult Function(CampaignsUpdated value)? campaignsUpdated,
    TResult Function(UpdateDonationItemCount value)? updateDonationItemCount,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(LoadUserCampaignsList value)? loadUserCampaignsList,
    TResult Function(UserCampaignsListUpdated value)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (campaignsUpdated != null) {
      return campaignsUpdated(this);
    }
    return orElse();
  }
}

abstract class CampaignsUpdated implements CampaignsEvent {
  const factory CampaignsUpdated(List<Campaign> campaigns) = _$CampaignsUpdated;

  List<Campaign> get campaigns => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignsUpdatedCopyWith<CampaignsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDonationItemCountCopyWith<$Res> {
  factory $UpdateDonationItemCountCopyWith(UpdateDonationItemCount value,
          $Res Function(UpdateDonationItemCount) then) =
      _$UpdateDonationItemCountCopyWithImpl<$Res>;
  $Res call({String? id, int? newValue});
}

/// @nodoc
class _$UpdateDonationItemCountCopyWithImpl<$Res>
    extends _$CampaignsEventCopyWithImpl<$Res>
    implements $UpdateDonationItemCountCopyWith<$Res> {
  _$UpdateDonationItemCountCopyWithImpl(UpdateDonationItemCount _value,
      $Res Function(UpdateDonationItemCount) _then)
      : super(_value, (v) => _then(v as UpdateDonationItemCount));

  @override
  UpdateDonationItemCount get _value => super._value as UpdateDonationItemCount;

  @override
  $Res call({
    Object? id = freezed,
    Object? newValue = freezed,
  }) {
    return _then(UpdateDonationItemCount(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      newValue == freezed
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UpdateDonationItemCount implements UpdateDonationItemCount {
  const _$UpdateDonationItemCount(this.id, this.newValue);

  @override
  final String? id;
  @override
  final int? newValue;

  @override
  String toString() {
    return 'CampaignsEvent.updateDonationItemCount(id: $id, newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateDonationItemCount &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.newValue, newValue) ||
                const DeepCollectionEquality()
                    .equals(other.newValue, newValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(newValue);

  @JsonKey(ignore: true)
  @override
  $UpdateDonationItemCountCopyWith<UpdateDonationItemCount> get copyWith =>
      _$UpdateDonationItemCountCopyWithImpl<UpdateDonationItemCount>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCampaign,
    required TResult Function(List<Campaign> campaigns) campaignsUpdated,
    required TResult Function(String? id, int? newValue)
        updateDonationItemCount,
    required TResult Function(String? id, String? userId) addParticipant,
    required TResult Function(String userId) loadUserCampaignsList,
    required TResult Function(List<Campaign> campaigns)
        userCampaignsListUpdated,
  }) {
    return updateDonationItemCount(id, newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCampaign,
    TResult Function(List<Campaign> campaigns)? campaignsUpdated,
    TResult Function(String? id, int? newValue)? updateDonationItemCount,
    TResult Function(String? id, String? userId)? addParticipant,
    TResult Function(String userId)? loadUserCampaignsList,
    TResult Function(List<Campaign> campaigns)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (updateDonationItemCount != null) {
      return updateDonationItemCount(id, newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaigns value) loadCampaign,
    required TResult Function(CampaignsUpdated value) campaignsUpdated,
    required TResult Function(UpdateDonationItemCount value)
        updateDonationItemCount,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(LoadUserCampaignsList value)
        loadUserCampaignsList,
    required TResult Function(UserCampaignsListUpdated value)
        userCampaignsListUpdated,
  }) {
    return updateDonationItemCount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaigns value)? loadCampaign,
    TResult Function(CampaignsUpdated value)? campaignsUpdated,
    TResult Function(UpdateDonationItemCount value)? updateDonationItemCount,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(LoadUserCampaignsList value)? loadUserCampaignsList,
    TResult Function(UserCampaignsListUpdated value)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (updateDonationItemCount != null) {
      return updateDonationItemCount(this);
    }
    return orElse();
  }
}

abstract class UpdateDonationItemCount implements CampaignsEvent {
  const factory UpdateDonationItemCount(String? id, int? newValue) =
      _$UpdateDonationItemCount;

  String? get id => throw _privateConstructorUsedError;
  int? get newValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateDonationItemCountCopyWith<UpdateDonationItemCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddParticipantCopyWith<$Res> {
  factory $AddParticipantCopyWith(
          AddParticipant value, $Res Function(AddParticipant) then) =
      _$AddParticipantCopyWithImpl<$Res>;
  $Res call({String? id, String? userId});
}

/// @nodoc
class _$AddParticipantCopyWithImpl<$Res>
    extends _$CampaignsEventCopyWithImpl<$Res>
    implements $AddParticipantCopyWith<$Res> {
  _$AddParticipantCopyWithImpl(
      AddParticipant _value, $Res Function(AddParticipant) _then)
      : super(_value, (v) => _then(v as AddParticipant));

  @override
  AddParticipant get _value => super._value as AddParticipant;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(AddParticipant(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddParticipant implements AddParticipant {
  const _$AddParticipant(this.id, this.userId);

  @override
  final String? id;
  @override
  final String? userId;

  @override
  String toString() {
    return 'CampaignsEvent.addParticipant(id: $id, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddParticipant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $AddParticipantCopyWith<AddParticipant> get copyWith =>
      _$AddParticipantCopyWithImpl<AddParticipant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCampaign,
    required TResult Function(List<Campaign> campaigns) campaignsUpdated,
    required TResult Function(String? id, int? newValue)
        updateDonationItemCount,
    required TResult Function(String? id, String? userId) addParticipant,
    required TResult Function(String userId) loadUserCampaignsList,
    required TResult Function(List<Campaign> campaigns)
        userCampaignsListUpdated,
  }) {
    return addParticipant(id, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCampaign,
    TResult Function(List<Campaign> campaigns)? campaignsUpdated,
    TResult Function(String? id, int? newValue)? updateDonationItemCount,
    TResult Function(String? id, String? userId)? addParticipant,
    TResult Function(String userId)? loadUserCampaignsList,
    TResult Function(List<Campaign> campaigns)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (addParticipant != null) {
      return addParticipant(id, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaigns value) loadCampaign,
    required TResult Function(CampaignsUpdated value) campaignsUpdated,
    required TResult Function(UpdateDonationItemCount value)
        updateDonationItemCount,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(LoadUserCampaignsList value)
        loadUserCampaignsList,
    required TResult Function(UserCampaignsListUpdated value)
        userCampaignsListUpdated,
  }) {
    return addParticipant(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaigns value)? loadCampaign,
    TResult Function(CampaignsUpdated value)? campaignsUpdated,
    TResult Function(UpdateDonationItemCount value)? updateDonationItemCount,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(LoadUserCampaignsList value)? loadUserCampaignsList,
    TResult Function(UserCampaignsListUpdated value)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (addParticipant != null) {
      return addParticipant(this);
    }
    return orElse();
  }
}

abstract class AddParticipant implements CampaignsEvent {
  const factory AddParticipant(String? id, String? userId) = _$AddParticipant;

  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddParticipantCopyWith<AddParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadUserCampaignsListCopyWith<$Res> {
  factory $LoadUserCampaignsListCopyWith(LoadUserCampaignsList value,
          $Res Function(LoadUserCampaignsList) then) =
      _$LoadUserCampaignsListCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$LoadUserCampaignsListCopyWithImpl<$Res>
    extends _$CampaignsEventCopyWithImpl<$Res>
    implements $LoadUserCampaignsListCopyWith<$Res> {
  _$LoadUserCampaignsListCopyWithImpl(
      LoadUserCampaignsList _value, $Res Function(LoadUserCampaignsList) _then)
      : super(_value, (v) => _then(v as LoadUserCampaignsList));

  @override
  LoadUserCampaignsList get _value => super._value as LoadUserCampaignsList;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(LoadUserCampaignsList(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadUserCampaignsList implements LoadUserCampaignsList {
  const _$LoadUserCampaignsList(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'CampaignsEvent.loadUserCampaignsList(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadUserCampaignsList &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $LoadUserCampaignsListCopyWith<LoadUserCampaignsList> get copyWith =>
      _$LoadUserCampaignsListCopyWithImpl<LoadUserCampaignsList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCampaign,
    required TResult Function(List<Campaign> campaigns) campaignsUpdated,
    required TResult Function(String? id, int? newValue)
        updateDonationItemCount,
    required TResult Function(String? id, String? userId) addParticipant,
    required TResult Function(String userId) loadUserCampaignsList,
    required TResult Function(List<Campaign> campaigns)
        userCampaignsListUpdated,
  }) {
    return loadUserCampaignsList(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCampaign,
    TResult Function(List<Campaign> campaigns)? campaignsUpdated,
    TResult Function(String? id, int? newValue)? updateDonationItemCount,
    TResult Function(String? id, String? userId)? addParticipant,
    TResult Function(String userId)? loadUserCampaignsList,
    TResult Function(List<Campaign> campaigns)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (loadUserCampaignsList != null) {
      return loadUserCampaignsList(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaigns value) loadCampaign,
    required TResult Function(CampaignsUpdated value) campaignsUpdated,
    required TResult Function(UpdateDonationItemCount value)
        updateDonationItemCount,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(LoadUserCampaignsList value)
        loadUserCampaignsList,
    required TResult Function(UserCampaignsListUpdated value)
        userCampaignsListUpdated,
  }) {
    return loadUserCampaignsList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaigns value)? loadCampaign,
    TResult Function(CampaignsUpdated value)? campaignsUpdated,
    TResult Function(UpdateDonationItemCount value)? updateDonationItemCount,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(LoadUserCampaignsList value)? loadUserCampaignsList,
    TResult Function(UserCampaignsListUpdated value)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (loadUserCampaignsList != null) {
      return loadUserCampaignsList(this);
    }
    return orElse();
  }
}

abstract class LoadUserCampaignsList implements CampaignsEvent {
  const factory LoadUserCampaignsList(String userId) = _$LoadUserCampaignsList;

  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadUserCampaignsListCopyWith<LoadUserCampaignsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCampaignsListUpdatedCopyWith<$Res> {
  factory $UserCampaignsListUpdatedCopyWith(UserCampaignsListUpdated value,
          $Res Function(UserCampaignsListUpdated) then) =
      _$UserCampaignsListUpdatedCopyWithImpl<$Res>;
  $Res call({List<Campaign> campaigns});
}

/// @nodoc
class _$UserCampaignsListUpdatedCopyWithImpl<$Res>
    extends _$CampaignsEventCopyWithImpl<$Res>
    implements $UserCampaignsListUpdatedCopyWith<$Res> {
  _$UserCampaignsListUpdatedCopyWithImpl(UserCampaignsListUpdated _value,
      $Res Function(UserCampaignsListUpdated) _then)
      : super(_value, (v) => _then(v as UserCampaignsListUpdated));

  @override
  UserCampaignsListUpdated get _value =>
      super._value as UserCampaignsListUpdated;

  @override
  $Res call({
    Object? campaigns = freezed,
  }) {
    return _then(UserCampaignsListUpdated(
      campaigns == freezed
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<Campaign>,
    ));
  }
}

/// @nodoc

class _$UserCampaignsListUpdated implements UserCampaignsListUpdated {
  const _$UserCampaignsListUpdated(this.campaigns);

  @override
  final List<Campaign> campaigns;

  @override
  String toString() {
    return 'CampaignsEvent.userCampaignsListUpdated(campaigns: $campaigns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserCampaignsListUpdated &&
            (identical(other.campaigns, campaigns) ||
                const DeepCollectionEquality()
                    .equals(other.campaigns, campaigns)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(campaigns);

  @JsonKey(ignore: true)
  @override
  $UserCampaignsListUpdatedCopyWith<UserCampaignsListUpdated> get copyWith =>
      _$UserCampaignsListUpdatedCopyWithImpl<UserCampaignsListUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCampaign,
    required TResult Function(List<Campaign> campaigns) campaignsUpdated,
    required TResult Function(String? id, int? newValue)
        updateDonationItemCount,
    required TResult Function(String? id, String? userId) addParticipant,
    required TResult Function(String userId) loadUserCampaignsList,
    required TResult Function(List<Campaign> campaigns)
        userCampaignsListUpdated,
  }) {
    return userCampaignsListUpdated(campaigns);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCampaign,
    TResult Function(List<Campaign> campaigns)? campaignsUpdated,
    TResult Function(String? id, int? newValue)? updateDonationItemCount,
    TResult Function(String? id, String? userId)? addParticipant,
    TResult Function(String userId)? loadUserCampaignsList,
    TResult Function(List<Campaign> campaigns)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (userCampaignsListUpdated != null) {
      return userCampaignsListUpdated(campaigns);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaigns value) loadCampaign,
    required TResult Function(CampaignsUpdated value) campaignsUpdated,
    required TResult Function(UpdateDonationItemCount value)
        updateDonationItemCount,
    required TResult Function(AddParticipant value) addParticipant,
    required TResult Function(LoadUserCampaignsList value)
        loadUserCampaignsList,
    required TResult Function(UserCampaignsListUpdated value)
        userCampaignsListUpdated,
  }) {
    return userCampaignsListUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaigns value)? loadCampaign,
    TResult Function(CampaignsUpdated value)? campaignsUpdated,
    TResult Function(UpdateDonationItemCount value)? updateDonationItemCount,
    TResult Function(AddParticipant value)? addParticipant,
    TResult Function(LoadUserCampaignsList value)? loadUserCampaignsList,
    TResult Function(UserCampaignsListUpdated value)? userCampaignsListUpdated,
    required TResult orElse(),
  }) {
    if (userCampaignsListUpdated != null) {
      return userCampaignsListUpdated(this);
    }
    return orElse();
  }
}

abstract class UserCampaignsListUpdated implements CampaignsEvent {
  const factory UserCampaignsListUpdated(List<Campaign> campaigns) =
      _$UserCampaignsListUpdated;

  List<Campaign> get campaigns => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCampaignsListUpdatedCopyWith<UserCampaignsListUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CampaignsStateTearOff {
  const _$CampaignsStateTearOff();

  CampaignLoadInProgress campaignLoadInProgress() {
    return const CampaignLoadInProgress();
  }

  CampaignLoadSuccess campaignLoadSuccess(List<Campaign> campaigns) {
    return CampaignLoadSuccess(
      campaigns,
    );
  }

  CampaignLoadFailure campaignLoadFailure() {
    return const CampaignLoadFailure();
  }
}

/// @nodoc
const $CampaignsState = _$CampaignsStateTearOff();

/// @nodoc
mixin _$CampaignsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() campaignLoadInProgress,
    required TResult Function(List<Campaign> campaigns) campaignLoadSuccess,
    required TResult Function() campaignLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? campaignLoadInProgress,
    TResult Function(List<Campaign> campaigns)? campaignLoadSuccess,
    TResult Function()? campaignLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CampaignLoadInProgress value)
        campaignLoadInProgress,
    required TResult Function(CampaignLoadSuccess value) campaignLoadSuccess,
    required TResult Function(CampaignLoadFailure value) campaignLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CampaignLoadInProgress value)? campaignLoadInProgress,
    TResult Function(CampaignLoadSuccess value)? campaignLoadSuccess,
    TResult Function(CampaignLoadFailure value)? campaignLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignsStateCopyWith<$Res> {
  factory $CampaignsStateCopyWith(
          CampaignsState value, $Res Function(CampaignsState) then) =
      _$CampaignsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CampaignsStateCopyWithImpl<$Res>
    implements $CampaignsStateCopyWith<$Res> {
  _$CampaignsStateCopyWithImpl(this._value, this._then);

  final CampaignsState _value;
  // ignore: unused_field
  final $Res Function(CampaignsState) _then;
}

/// @nodoc
abstract class $CampaignLoadInProgressCopyWith<$Res> {
  factory $CampaignLoadInProgressCopyWith(CampaignLoadInProgress value,
          $Res Function(CampaignLoadInProgress) then) =
      _$CampaignLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$CampaignLoadInProgressCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res>
    implements $CampaignLoadInProgressCopyWith<$Res> {
  _$CampaignLoadInProgressCopyWithImpl(CampaignLoadInProgress _value,
      $Res Function(CampaignLoadInProgress) _then)
      : super(_value, (v) => _then(v as CampaignLoadInProgress));

  @override
  CampaignLoadInProgress get _value => super._value as CampaignLoadInProgress;
}

/// @nodoc

class _$CampaignLoadInProgress implements CampaignLoadInProgress {
  const _$CampaignLoadInProgress();

  @override
  String toString() {
    return 'CampaignsState.campaignLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CampaignLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() campaignLoadInProgress,
    required TResult Function(List<Campaign> campaigns) campaignLoadSuccess,
    required TResult Function() campaignLoadFailure,
  }) {
    return campaignLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? campaignLoadInProgress,
    TResult Function(List<Campaign> campaigns)? campaignLoadSuccess,
    TResult Function()? campaignLoadFailure,
    required TResult orElse(),
  }) {
    if (campaignLoadInProgress != null) {
      return campaignLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CampaignLoadInProgress value)
        campaignLoadInProgress,
    required TResult Function(CampaignLoadSuccess value) campaignLoadSuccess,
    required TResult Function(CampaignLoadFailure value) campaignLoadFailure,
  }) {
    return campaignLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CampaignLoadInProgress value)? campaignLoadInProgress,
    TResult Function(CampaignLoadSuccess value)? campaignLoadSuccess,
    TResult Function(CampaignLoadFailure value)? campaignLoadFailure,
    required TResult orElse(),
  }) {
    if (campaignLoadInProgress != null) {
      return campaignLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class CampaignLoadInProgress implements CampaignsState {
  const factory CampaignLoadInProgress() = _$CampaignLoadInProgress;
}

/// @nodoc
abstract class $CampaignLoadSuccessCopyWith<$Res> {
  factory $CampaignLoadSuccessCopyWith(
          CampaignLoadSuccess value, $Res Function(CampaignLoadSuccess) then) =
      _$CampaignLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Campaign> campaigns});
}

/// @nodoc
class _$CampaignLoadSuccessCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res>
    implements $CampaignLoadSuccessCopyWith<$Res> {
  _$CampaignLoadSuccessCopyWithImpl(
      CampaignLoadSuccess _value, $Res Function(CampaignLoadSuccess) _then)
      : super(_value, (v) => _then(v as CampaignLoadSuccess));

  @override
  CampaignLoadSuccess get _value => super._value as CampaignLoadSuccess;

  @override
  $Res call({
    Object? campaigns = freezed,
  }) {
    return _then(CampaignLoadSuccess(
      campaigns == freezed
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<Campaign>,
    ));
  }
}

/// @nodoc

class _$CampaignLoadSuccess implements CampaignLoadSuccess {
  const _$CampaignLoadSuccess(this.campaigns);

  @override
  final List<Campaign> campaigns;

  @override
  String toString() {
    return 'CampaignsState.campaignLoadSuccess(campaigns: $campaigns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CampaignLoadSuccess &&
            (identical(other.campaigns, campaigns) ||
                const DeepCollectionEquality()
                    .equals(other.campaigns, campaigns)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(campaigns);

  @JsonKey(ignore: true)
  @override
  $CampaignLoadSuccessCopyWith<CampaignLoadSuccess> get copyWith =>
      _$CampaignLoadSuccessCopyWithImpl<CampaignLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() campaignLoadInProgress,
    required TResult Function(List<Campaign> campaigns) campaignLoadSuccess,
    required TResult Function() campaignLoadFailure,
  }) {
    return campaignLoadSuccess(campaigns);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? campaignLoadInProgress,
    TResult Function(List<Campaign> campaigns)? campaignLoadSuccess,
    TResult Function()? campaignLoadFailure,
    required TResult orElse(),
  }) {
    if (campaignLoadSuccess != null) {
      return campaignLoadSuccess(campaigns);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CampaignLoadInProgress value)
        campaignLoadInProgress,
    required TResult Function(CampaignLoadSuccess value) campaignLoadSuccess,
    required TResult Function(CampaignLoadFailure value) campaignLoadFailure,
  }) {
    return campaignLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CampaignLoadInProgress value)? campaignLoadInProgress,
    TResult Function(CampaignLoadSuccess value)? campaignLoadSuccess,
    TResult Function(CampaignLoadFailure value)? campaignLoadFailure,
    required TResult orElse(),
  }) {
    if (campaignLoadSuccess != null) {
      return campaignLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class CampaignLoadSuccess implements CampaignsState {
  const factory CampaignLoadSuccess(List<Campaign> campaigns) =
      _$CampaignLoadSuccess;

  List<Campaign> get campaigns => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignLoadSuccessCopyWith<CampaignLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignLoadFailureCopyWith<$Res> {
  factory $CampaignLoadFailureCopyWith(
          CampaignLoadFailure value, $Res Function(CampaignLoadFailure) then) =
      _$CampaignLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CampaignLoadFailureCopyWithImpl<$Res>
    extends _$CampaignsStateCopyWithImpl<$Res>
    implements $CampaignLoadFailureCopyWith<$Res> {
  _$CampaignLoadFailureCopyWithImpl(
      CampaignLoadFailure _value, $Res Function(CampaignLoadFailure) _then)
      : super(_value, (v) => _then(v as CampaignLoadFailure));

  @override
  CampaignLoadFailure get _value => super._value as CampaignLoadFailure;
}

/// @nodoc

class _$CampaignLoadFailure implements CampaignLoadFailure {
  const _$CampaignLoadFailure();

  @override
  String toString() {
    return 'CampaignsState.campaignLoadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CampaignLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() campaignLoadInProgress,
    required TResult Function(List<Campaign> campaigns) campaignLoadSuccess,
    required TResult Function() campaignLoadFailure,
  }) {
    return campaignLoadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? campaignLoadInProgress,
    TResult Function(List<Campaign> campaigns)? campaignLoadSuccess,
    TResult Function()? campaignLoadFailure,
    required TResult orElse(),
  }) {
    if (campaignLoadFailure != null) {
      return campaignLoadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CampaignLoadInProgress value)
        campaignLoadInProgress,
    required TResult Function(CampaignLoadSuccess value) campaignLoadSuccess,
    required TResult Function(CampaignLoadFailure value) campaignLoadFailure,
  }) {
    return campaignLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CampaignLoadInProgress value)? campaignLoadInProgress,
    TResult Function(CampaignLoadSuccess value)? campaignLoadSuccess,
    TResult Function(CampaignLoadFailure value)? campaignLoadFailure,
    required TResult orElse(),
  }) {
    if (campaignLoadFailure != null) {
      return campaignLoadFailure(this);
    }
    return orElse();
  }
}

abstract class CampaignLoadFailure implements CampaignsState {
  const factory CampaignLoadFailure() = _$CampaignLoadFailure;
}
