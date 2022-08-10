import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:resident/core/theme/resident_spacing.dart';


class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key,required this.tabBarList,required this.tabBarView,this.marginHorizontal}) : super(key: key);
  final List<String>? tabBarList;
  final List<Widget>? tabBarView;
  final double? marginHorizontal;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabBarList?.length ?? 0,
      child:Column(
        children: [
          Container(
            height: 60,
            margin: EdgeInsets.symmetric(vertical:
            marginHorizontal ?? 0,horizontal: ResidentSpacing.spacing15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).canvasColor,
            ),
            child: TabBar(
              padding: const EdgeInsets.symmetric(
                  horizontal:  ResidentSpacing.spacing15),

              tabs: List.generate(
                  tabBarList?.length ?? 0, (index) => Tab(
                  text:tabBarList?[index],
                )
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: List.generate(
                  tabBarView?.length ?? 0, (index) =>
                   Container(
                  child: tabBarView?[index],
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
