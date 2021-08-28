
import 'package:flutter/material.dart';
import 'package:smile_makers/account/bloc/account_bloc.dart';
import 'package:smile_makers/donation/UI/items_list_view.dart';
import 'package:smile_makers/donation/UI/unauthenticated_items_view.dart';

List<Page> onGenerateItemsViewPages(AccountState state, List<Page<dynamic>> pages){
  if(state is Authenticated){
    return [ItemsListView.page(state.userModel.id!)];
  } else {
    return [UnauthenticatedItemsView.page()];
  }
}