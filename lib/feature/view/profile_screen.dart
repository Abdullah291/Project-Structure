
import 'package:flutter/material.dart';
import 'package:resident/core/helper/assets_helper.dart';
import 'package:resident/core/theme/resident_color.dart';
import 'package:resident/core/theme/resident_radius.dart';
import 'package:resident/core/theme/resident_sizedbox.dart';
import 'package:resident/core/theme/resident_spacing.dart';
import 'package:resident/feature/widget/appbar_widget.dart';
import 'package:resident/feature/widget/profiletile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarWidget(
        leading: backImage,
        leadingTap: () {
          Navigator.pop(context);
        },
        title: 'My Profile',
        trailing: "Edit",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(ResidentRadius.cornerRadius100),
                    child: Image.asset(circleAvatarImage,width: 150,height: 150,),
                  ),
                  Positioned(
                    bottom: 4,
                    right: 4,
                    child: Container(
                      padding: const EdgeInsets.all(ResidentSpacing.spacing15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ResidentRadius.cornerRadius100),
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      child: Image.asset(cameraImage,),
                    ),
                  )
                ],
              ),

              Text("Mike Frank",style: Theme.of(context).textTheme.headline1,),
              Text("Unit 103",style: Theme.of(context).textTheme.headline1?.copyWith(fontWeight: FontWeight.w400,),),
              ResidentSizeBox().h25,
              const _Heading(title: "Info",),
              const Padding(
                  padding: EdgeInsets.only(top: 5,bottom: 15),
                  child: Divider(thickness: 0.5,color: ResidentColor.grey2Color,)),
              const ProfileTileWidget(title: "Email",subtitle: "Mike.frank@mybos.com.au",),
              const ProfileTileWidget(title: "Username",subtitle: "Mike.frank@mybos.com.au",),


              Padding(
                padding: const EdgeInsets.symmetric(vertical: ResidentSpacing.spacing25),
                child: OutlinedButton(
                    onPressed: (){},
                    child:Text("Change Password",style: Theme.of(context).textTheme.headline4,
                    ),
                ),
              ),
              const _Heading(title: "Car Registration",),
              const Padding(
                  padding: EdgeInsets.only(top: 5,bottom: 15),
                  child: Divider(thickness: 0.5,color: ResidentColor.grey2Color,)),
              const ProfileTileWidget(title: "Rego Number",subtitle: "MNE 121",),
              const ProfileTileWidget(title: "Make/Model",subtitle: "Honda Civic",),
              const ProfileTileWidget(title: "Space number",subtitle: "120",),
              const ProfileTileWidget(title: "Make/Model:",subtitle: "Basment",),

              ElevatedButton.icon(
                  icon: Image.asset(logout2Image,height: 25,fit: BoxFit.fill,),
                  onPressed: (){},
                  label: const Text("Log out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Heading extends StatelessWidget {
  const _Heading({
    Key? key,required this.title,}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(title,
          style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.w700),)
    );
  }
}
