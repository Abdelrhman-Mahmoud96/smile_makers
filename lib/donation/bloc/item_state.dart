part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState.loadInProgress()  = LoadInProgress;
  const factory ItemState.loadSuccess(final List<Item> items) = LoadSuccess;
  const factory ItemState.loadFailure() = LoadFailure;

}
