import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:smile_makers/campaign/bloc/campaigns_bloc.dart';
import 'package:smile_makers/campaign/ui/routes.dart';
import 'package:provider/provider.dart';

/* we needed this class to open new page without making bottomNavigationBar disappear
 we solved that by navigating to different page of the same screen using flowBuilder */
class CampaignTab extends StatelessWidget {

  const CampaignTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlowBuilder<CampaignsState>(
        state: context.select((CampaignsBloc campaignsBloc) => campaignsBloc.state),
        onGeneratePages: onGenerateCampaignsViewPages,
      ),
    );
  }


}
