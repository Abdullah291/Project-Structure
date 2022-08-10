import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resident/core/helper/assets_helper.dart';
import 'package:resident/core/theme/resident_radius.dart';
import 'package:resident/core/theme/resident_sizedbox.dart';
import 'package:resident/core/theme/resident_spacing.dart';
import 'package:resident/feature/widget/appbar_widget.dart';
import 'package:resident/feature/widget/tabbar_widget.dart';

class MaintenanceScreen extends StatelessWidget {
  const MaintenanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Theme.of(context).primaryColor,
      appBar:AppBarWidget(
        leading: backImage,
        leadingTap: () {
          Navigator.pop(context);
        },
        title: 'Maintenance request',
        trailing: "New",
      ),
      body: const SafeArea(
      child: TabBarWidget(
          marginHorizontal: ResidentSpacing.spacing25,
          tabBarList: ["Pending","In Progress", "Completed"],
          tabBarView: [
            _PendingRequest(),
            Text("2"),
            Text("2"),
          ],
        )
      ),
    );
  }
}


class _PendingRequest extends StatelessWidget {
  const _PendingRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(
              "Defects - Request #321321",style: Theme.of(context).textTheme.headline4,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Row(
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    "Date added: 21/06/21",
                    style: Theme.of(context).textTheme.headline6,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,

                  ),
                ),
                ResidentSizeBox().w12,
                Text("Pending",style: Theme.of(context).textTheme.caption,),
              ],
            ),
            trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ResidentRadius.cornerRadius100),
                  color: Theme.of(context).colorScheme.surface,
                ),
                padding: EdgeInsets.all(ResidentSpacing.spacing12),
                child: Image.asset(message1Image,)),
          );
        }
    );
  }
}
