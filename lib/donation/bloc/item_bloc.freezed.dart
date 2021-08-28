// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemEventTearOff {
  const _$ItemEventTearOff();

  LoadItems loadItems() {
    return const LoadItems();
  }

  AddItem addItem({required Item item, required String campaignId}) {
    return AddItem(
      item: item,
      campaignId: campaignId,
    );
  }

  DeleteItem deleteItem(Item item) {
    return DeleteItem(
      item,
    );
  }

  UpdateItem updateItem(Item item) {
    return UpdateItem(
      item,
    );
  }

  ItemsUpdated itemsUpdated(List<Item> items) {
    return ItemsUpdated(
      items,
    );
  }
}

/// @nodoc
const $ItemEvent = _$ItemEventTearOff();

/// @nodoc
mixin _$ItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadItems,
    required TResult Function(Item item, String campaignId) addItem,
    required TResult Function(Item item) deleteItem,
    required TResult Function(Item item) updateItem,
    required TResult Function(List<Item> items) itemsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadItems,
    TResult Function(Item item, String campaignId)? addItem,
    TResult Function(Item item)? deleteItem,
    TResult Function(Item item)? updateItem,
    TResult Function(List<Item> items)? itemsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadItems value) loadItems,
    required TResult Function(AddItem value) addItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(UpdateItem value) updateItem,
    required TResult Function(ItemsUpdated value) itemsUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadItems value)? loadItems,
    TResult Function(AddItem value)? addItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(UpdateItem value)? updateItem,
    TResult Function(ItemsUpdated value)? itemsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEventCopyWith<$Res> {
  factory $ItemEventCopyWith(ItemEvent value, $Res Function(ItemEvent) then) =
      _$ItemEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemEventCopyWithImpl<$Res> implements $ItemEventCopyWith<$Res> {
  _$ItemEventCopyWithImpl(this._value, this._then);

  final ItemEvent _value;
  // ignore: unused_field
  final $Res Function(ItemEvent) _then;
}

/// @nodoc
abstract class $LoadItemsCopyWith<$Res> {
  factory $LoadItemsCopyWith(LoadItems value, $Res Function(LoadItems) then) =
      _$LoadItemsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadItemsCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements $LoadItemsCopyWith<$Res> {
  _$LoadItemsCopyWithImpl(LoadItems _value, $Res Function(LoadItems) _then)
      : super(_value, (v) => _then(v as LoadItems));

  @override
  LoadItems get _value => super._value as LoadItems;
}

/// @nodoc

class _$LoadItems implements LoadItems {
  const _$LoadItems();

  @override
  String toString() {
    return 'ItemEvent.loadItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadItems,
    required TResult Function(Item item, String campaignId) addItem,
    required TResult Function(Item item) deleteItem,
    required TResult Function(Item item) updateItem,
    required TResult Function(List<Item> items) itemsUpdated,
  }) {
    return loadItems();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadItems,
    TResult Function(Item item, String campaignId)? addItem,
    TResult Function(Item item)? deleteItem,
    TResult Function(Item item)? updateItem,
    TResult Function(List<Item> items)? itemsUpdated,
    required TResult orElse(),
  }) {
    if (loadItems != null) {
      return loadItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadItems value) loadItems,
    required TResult Function(AddItem value) addItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(UpdateItem value) updateItem,
    required TResult Function(ItemsUpdated value) itemsUpdated,
  }) {
    return loadItems(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadItems value)? loadItems,
    TResult Function(AddItem value)? addItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(UpdateItem value)? updateItem,
    TResult Function(ItemsUpdated value)? itemsUpdated,
    required TResult orElse(),
  }) {
    if (loadItems != null) {
      return loadItems(this);
    }
    return orElse();
  }
}

abstract class LoadItems implements ItemEvent {
  const factory LoadItems() = _$LoadItems;
}

/// @nodoc
abstract class $AddItemCopyWith<$Res> {
  factory $AddItemCopyWith(AddItem value, $Res Function(AddItem) then) =
      _$AddItemCopyWithImpl<$Res>;
  $Res call({Item item, String campaignId});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$AddItemCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements $AddItemCopyWith<$Res> {
  _$AddItemCopyWithImpl(AddItem _value, $Res Function(AddItem) _then)
      : super(_value, (v) => _then(v as AddItem));

  @override
  AddItem get _value => super._value as AddItem;

  @override
  $Res call({
    Object? item = freezed,
    Object? campaignId = freezed,
  }) {
    return _then(AddItem(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      campaignId: campaignId == freezed
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$AddItem implements AddItem {
  const _$AddItem({required this.item, required this.campaignId});

  @override
  final Item item;
  @override
  final String campaignId;

  @override
  String toString() {
    return 'ItemEvent.addItem(item: $item, campaignId: $campaignId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddItem &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.campaignId, campaignId) ||
                const DeepCollectionEquality()
                    .equals(other.campaignId, campaignId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(campaignId);

  @JsonKey(ignore: true)
  @override
  $AddItemCopyWith<AddItem> get copyWith =>
      _$AddItemCopyWithImpl<AddItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadItems,
    required TResult Function(Item item, String campaignId) addItem,
    required TResult Function(Item item) deleteItem,
    required TResult Function(Item item) updateItem,
    required TResult Function(List<Item> items) itemsUpdated,
  }) {
    return addItem(item, campaignId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadItems,
    TResult Function(Item item, String campaignId)? addItem,
    TResult Function(Item item)? deleteItem,
    TResult Function(Item item)? updateItem,
    TResult Function(List<Item> items)? itemsUpdated,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(item, campaignId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadItems value) loadItems,
    required TResult Function(AddItem value) addItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(UpdateItem value) updateItem,
    required TResult Function(ItemsUpdated value) itemsUpdated,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadItems value)? loadItems,
    TResult Function(AddItem value)? addItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(UpdateItem value)? updateItem,
    TResult Function(ItemsUpdated value)? itemsUpdated,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class AddItem implements ItemEvent {
  const factory AddItem({required Item item, required String campaignId}) =
      _$AddItem;

  Item get item => throw _privateConstructorUsedError;
  String get campaignId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddItemCopyWith<AddItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteItemCopyWith<$Res> {
  factory $DeleteItemCopyWith(
          DeleteItem value, $Res Function(DeleteItem) then) =
      _$DeleteItemCopyWithImpl<$Res>;
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$DeleteItemCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements $DeleteItemCopyWith<$Res> {
  _$DeleteItemCopyWithImpl(DeleteItem _value, $Res Function(DeleteItem) _then)
      : super(_value, (v) => _then(v as DeleteItem));

  @override
  DeleteItem get _value => super._value as DeleteItem;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(DeleteItem(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$DeleteItem implements DeleteItem {
  const _$DeleteItem(this.item);

  @override
  final Item item;

  @override
  String toString() {
    return 'ItemEvent.deleteItem(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteItem &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  $DeleteItemCopyWith<DeleteItem> get copyWith =>
      _$DeleteItemCopyWithImpl<DeleteItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadItems,
    required TResult Function(Item item, String campaignId) addItem,
    required TResult Function(Item item) deleteItem,
    required TResult Function(Item item) updateItem,
    required TResult Function(List<Item> items) itemsUpdated,
  }) {
    return deleteItem(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadItems,
    TResult Function(Item item, String campaignId)? addItem,
    TResult Function(Item item)? deleteItem,
    TResult Function(Item item)? updateItem,
    TResult Function(List<Item> items)? itemsUpdated,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadItems value) loadItems,
    required TResult Function(AddItem value) addItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(UpdateItem value) updateItem,
    required TResult Function(ItemsUpdated value) itemsUpdated,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadItems value)? loadItems,
    TResult Function(AddItem value)? addItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(UpdateItem value)? updateItem,
    TResult Function(ItemsUpdated value)? itemsUpdated,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class DeleteItem implements ItemEvent {
  const factory DeleteItem(Item item) = _$DeleteItem;

  Item get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteItemCopyWith<DeleteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateItemCopyWith<$Res> {
  factory $UpdateItemCopyWith(
          UpdateItem value, $Res Function(UpdateItem) then) =
      _$UpdateItemCopyWithImpl<$Res>;
  $Res call({Item item});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$UpdateItemCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements $UpdateItemCopyWith<$Res> {
  _$UpdateItemCopyWithImpl(UpdateItem _value, $Res Function(UpdateItem) _then)
      : super(_value, (v) => _then(v as UpdateItem));

  @override
  UpdateItem get _value => super._value as UpdateItem;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(UpdateItem(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$UpdateItem implements UpdateItem {
  const _$UpdateItem(this.item);

  @override
  final Item item;

  @override
  String toString() {
    return 'ItemEvent.updateItem(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateItem &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @JsonKey(ignore: true)
  @override
  $UpdateItemCopyWith<UpdateItem> get copyWith =>
      _$UpdateItemCopyWithImpl<UpdateItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadItems,
    required TResult Function(Item item, String campaignId) addItem,
    required TResult Function(Item item) deleteItem,
    required TResult Function(Item item) updateItem,
    required TResult Function(List<Item> items) itemsUpdated,
  }) {
    return updateItem(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadItems,
    TResult Function(Item item, String campaignId)? addItem,
    TResult Function(Item item)? deleteItem,
    TResult Function(Item item)? updateItem,
    TResult Function(List<Item> items)? itemsUpdated,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadItems value) loadItems,
    required TResult Function(AddItem value) addItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(UpdateItem value) updateItem,
    required TResult Function(ItemsUpdated value) itemsUpdated,
  }) {
    return updateItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadItems value)? loadItems,
    TResult Function(AddItem value)? addItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(UpdateItem value)? updateItem,
    TResult Function(ItemsUpdated value)? itemsUpdated,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(this);
    }
    return orElse();
  }
}

abstract class UpdateItem implements ItemEvent {
  const factory UpdateItem(Item item) = _$UpdateItem;

  Item get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateItemCopyWith<UpdateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsUpdatedCopyWith<$Res> {
  factory $ItemsUpdatedCopyWith(
          ItemsUpdated value, $Res Function(ItemsUpdated) then) =
      _$ItemsUpdatedCopyWithImpl<$Res>;
  $Res call({List<Item> items});
}

/// @nodoc
class _$ItemsUpdatedCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements $ItemsUpdatedCopyWith<$Res> {
  _$ItemsUpdatedCopyWithImpl(
      ItemsUpdated _value, $Res Function(ItemsUpdated) _then)
      : super(_value, (v) => _then(v as ItemsUpdated));

  @override
  ItemsUpdated get _value => super._value as ItemsUpdated;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(ItemsUpdated(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$ItemsUpdated implements ItemsUpdated {
  const _$ItemsUpdated(this.items);

  @override
  final List<Item> items;

  @override
  String toString() {
    return 'ItemEvent.itemsUpdated(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ItemsUpdated &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  $ItemsUpdatedCopyWith<ItemsUpdated> get copyWith =>
      _$ItemsUpdatedCopyWithImpl<ItemsUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadItems,
    required TResult Function(Item item, String campaignId) addItem,
    required TResult Function(Item item) deleteItem,
    required TResult Function(Item item) updateItem,
    required TResult Function(List<Item> items) itemsUpdated,
  }) {
    return itemsUpdated(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadItems,
    TResult Function(Item item, String campaignId)? addItem,
    TResult Function(Item item)? deleteItem,
    TResult Function(Item item)? updateItem,
    TResult Function(List<Item> items)? itemsUpdated,
    required TResult orElse(),
  }) {
    if (itemsUpdated != null) {
      return itemsUpdated(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadItems value) loadItems,
    required TResult Function(AddItem value) addItem,
    required TResult Function(DeleteItem value) deleteItem,
    required TResult Function(UpdateItem value) updateItem,
    required TResult Function(ItemsUpdated value) itemsUpdated,
  }) {
    return itemsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadItems value)? loadItems,
    TResult Function(AddItem value)? addItem,
    TResult Function(DeleteItem value)? deleteItem,
    TResult Function(UpdateItem value)? updateItem,
    TResult Function(ItemsUpdated value)? itemsUpdated,
    required TResult orElse(),
  }) {
    if (itemsUpdated != null) {
      return itemsUpdated(this);
    }
    return orElse();
  }
}

abstract class ItemsUpdated implements ItemEvent {
  const factory ItemsUpdated(List<Item> items) = _$ItemsUpdated;

  List<Item> get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsUpdatedCopyWith<ItemsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ItemStateTearOff {
  const _$ItemStateTearOff();

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess(List<Item> items) {
    return LoadSuccess(
      items,
    );
  }

  LoadFailure loadFailure() {
    return const LoadFailure();
  }
}

/// @nodoc
const $ItemState = _$ItemStateTearOff();

/// @nodoc
mixin _$ItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<Item> items) loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<Item> items)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res> implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  final ItemState _value;
  // ignore: unused_field
  final $Res Function(ItemState) _then;
}

/// @nodoc
abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadInProgressCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

/// @nodoc

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'ItemState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<Item> items) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<Item> items)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements ItemState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Item> items});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(LoadSuccess(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.items);

  @override
  final List<Item> items;

  @override
  String toString() {
    return 'ItemState.loadSuccess(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<Item> items) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<Item> items)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements ItemState {
  const factory LoadSuccess(List<Item> items) = _$LoadSuccess;

  List<Item> get items => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure();

  @override
  String toString() {
    return 'ItemState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<Item> items) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<Item> items)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements ItemState {
  const factory LoadFailure() = _$LoadFailure;
}
