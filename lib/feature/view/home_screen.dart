import 'package:flutter/material.dart';
import 'package:resident/core/helper/assets_helper.dart';
import 'package:resident/core/theme/resident_color.dart';
import 'package:resident/core/theme/resident_radius.dart';
import 'package:resident/core/theme/resident_sizedbox.dart';
import 'package:resident/core/theme/resident_spacing.dart';
import 'package:resident/core/theme/resident_typography.dart';
import 'package:resident/feature/model/home_model.dart';
import 'package:resident/feature/widget/appbar_widget.dart';
import 'package:resident/feature/widget/drawer_widget.dart';
import 'package:resident/feature/widget/homegridview_widget.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarWidget(
        leading: drawerImage,
        leadingTap: () {
          print("Done");
          scaffoldKey.currentState?.openDrawer();
          setState(() {});
        },
        title: 'Vostro Apartment',
        subtitle: 'Sydney NSW 2000',
        trailing: notificationImage,
        trailingIcon: true,
      ),
      key: scaffoldKey,
      drawer: DrawerWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(ResidentSpacing.spacing15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(ResidentRadius.cornerRadius25),
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                    color: ResidentColor.secondaryColor,
                      image: DecorationImage(
                        image: AssetImage(cover1Image),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        _BuildWeather(),
                      ],
                    ),
                  ),
                ),
                const _BuildGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BuildWeather extends StatelessWidget {
  const _BuildWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(ResidentSpacing.spacing12),
      decoration: BoxDecoration(
        color: ResidentColor.grey2Color.withOpacity(0.25),
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(ResidentRadius.cornerRadius25),
            bottomRight: Radius.circular(ResidentRadius.cornerRadius25)
        ),
      ),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(weatherImage),
              ResidentSizeBox().w4,
              Text("Sunny",
                semanticsLabel: "Sunny",
                style: ResidentTextStyle.displayLarge,),
            ],
          ),
          Row(
            children: [
              Text("34°",
                semanticsLabel: "34°",style:  ResidentTextStyle.displayMedium,),
              ResidentSizeBox().w4,
              Text("Feels like 18°",
                semanticsLabel: "Feels like 18°",
                style: ResidentTextStyle.displaySmall,),
            ],
          ),
        ],
      ),
    );
  }
}

class _BuildGridView extends StatelessWidget {
  const _BuildGridView({Key? key}) : super(key: key);
  static const _numberOfElement= 3;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: ResidentSpacing.spacing20),
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _numberOfElement,
            mainAxisExtent: 125,
            mainAxisSpacing: 5,
            crossAxisSpacing: 2
        ),
        itemCount: homeModel.length,
        itemBuilder: (context,index){
          HomeGridViewModel data= homeModel[index];
          return HomeGridViewWidget(
            title: data.title,
            image: data.image,
          );
        },
      ),
    );
  }
}



