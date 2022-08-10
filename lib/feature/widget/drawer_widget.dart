import 'package:flutter/material.dart';
import 'package:resident/core/helper/assets_helper.dart';
import 'package:resident/core/theme/resident_color.dart';
import 'package:resident/core/theme/resident_radius.dart';
import 'package:resident/core/theme/resident_sizedbox.dart';
import 'package:resident/core/theme/resident_spacing.dart';
import 'package:resident/feature/view/maintenance_screen.dart';
import 'package:resident/feature/view/profile_screen.dart';
import 'package:resident/feature/widget/drawertile_widget.dart';


class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: ResidentSpacing.spacing15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ResidentSizeBox().h50,
                  Text("Vostro Apartment",style: Theme.of(context).textTheme.headline1,),
                  Text("Sydney NSW 2000",style: Theme.of(context).textTheme.subtitle1,),
                  ResidentSizeBox().h20,
                  Image.asset(coverImage,fit: BoxFit.fill,),
                  ResidentSizeBox().h15,

                  OutlinedButton.icon(
                      onPressed: (){},
                      icon:  Image.asset(changeCoverImage,height: 22,fit: BoxFit.fill,),
                      label: Text("Change cover image",
                          style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 14)
                      )
                  ),


                  ResidentSizeBox().h15,
                  const Divider(thickness: 0.2,color: ResidentColor.grey2Color,)
                ],
              ),
            ),
            ResidentSizeBox().h10,
            const _ListTiles(),
          ],
        ),
      ),
    );
  }
}


class _ListTiles extends StatelessWidget {
  const _ListTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerTileWidget(
          leading: homeImage,
          title: "Home",
          onTap: ()  {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MaintenanceScreen()),
            );
          },
        ),
        DrawerTileWidget(
          leading: profileImage,
          title: "Profile",
          onTap: ()  {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          },
        ),
        DrawerTileWidget(
          leading: knowledgeImage,
          title: "Knowledge Base",
          onTap: ()  {},
        ),
        DrawerTileWidget(
          leading: sendFeedbackImage,
          title: "Send Feedback",
          onTap: ()  {},
        ),
        DrawerTileWidget(
          leading: emailSupportImage,
          title: "Email Support",
          onTap: ()  {},
        ),
        DrawerTileWidget(
          leading: logoutImage,
          title: "Log Out",
          onTap: ()  {},
        ),
      ],
    );
  }
}
