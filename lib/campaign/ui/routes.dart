import 'package:flutter/material.dart';
import 'package:smile_makers/campaign/bloc/campaigns_bloc.dart';
import 'package:smile_makers/campaign/ui/campaigns_list_view.dart';

List<Page> onGenerateCampaignsViewPages(CampaignsState state, List<Page<dynamic>> pages){
    return [CampaignsListView.page()];
}