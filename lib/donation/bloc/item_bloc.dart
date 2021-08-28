import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smile_makers/donation/models/item.dart';
import 'package:smile_makers/donation/repository/item_repository.dart';
import 'package:smile_makers/firebase/campaigns_firestore_repo.dart';

part 'item_event.dart';
part 'item_state.dart';
part 'item_bloc.freezed.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {

  final ItemRepository _itemRepository;
  StreamSubscription? _itemSubscription;

  ItemBloc({required ItemRepository itemRepository}) :
   _itemRepository = itemRepository, super(ItemState.loadInProgress());

  @override
  Stream<ItemState> mapEventToState(ItemEvent event) async* {
    if (event is LoadItems) {
      yield* _mapLoadItemsToState();
    } else if(event is AddItem){
      yield* _mapAddItemToState(event);
    }else if(event is DeleteItem){
      yield* _mapDeleteItemToState(event);
    }else if(event is UpdateItem){
      yield* _mapUpdateItemToState(event);
    }else if(event is ItemsUpdated){
      yield* _mapItemsUpdatedToState(event);
    }
  }

  Stream<ItemState> _mapLoadItemsToState() async*{
    _itemSubscription = _itemRepository.items().listen((items) => add(ItemEvent.itemsUpdated(items)));
  }

  Stream<ItemState> _mapAddItemToState(AddItem event) async*{
    _itemRepository.addItem(event.item, event.campaignId);
  }

  Stream<ItemState> _mapDeleteItemToState(DeleteItem event) async*{
    _itemRepository.deleteItem(event.item);
  }

  Stream<ItemState> _mapUpdateItemToState(UpdateItem event) async*{
    _itemRepository.updateItem(event.item);
  }

  Stream<ItemState> _mapItemsUpdatedToState(ItemsUpdated event) async*{
    yield ItemState.loadSuccess(event.items);
  }

  @override
  Future close() {
    _itemSubscription?.cancel();
    return super.close();
  }
}
