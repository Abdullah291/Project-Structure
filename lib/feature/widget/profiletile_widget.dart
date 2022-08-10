import 'package:flutter/material.dart';


class ProfileTileWidget extends StatelessWidget {
   const ProfileTileWidget({Key? key,this.title,this.subtitle}) : super(key: key);

  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: MediaQuery.of(context).size.width*0.35,
      leading: Text("${title ?? ''}:",style: Theme.of(context).textTheme.headline5,),
      title: Text("${subtitle ?? ''}:",style: Theme.of(context).textTheme.headline6,),
    );
  }
}
