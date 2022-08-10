import 'package:flutter/material.dart';
import 'package:resident/core/theme/resident_spacing.dart';


 class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
 final String? leading;
 final VoidCallback? leadingTap;
 final String? title;
 final String? subtitle;
 final String? trailing;
 final bool? trailingIcon;
  AppBarWidget({Key? key, required this.leading,this.leadingTap,this.title,this.subtitle,this.trailing,this.trailingIcon=false}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: leadingTap,
        icon: leading == null ? const SizedBox.shrink() : Image.asset(leading ?? ''),
      ),
      centerTitle: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title ?? '',style: Theme.of(context).textTheme.headline1,),
          if(subtitle != null)...{
            Text(subtitle ?? '', style: Theme
                .of(context)
                .textTheme
                .subtitle1,),
          }
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: ResidentSpacing.spacing15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              trailingIcon==true ?
              Image.asset(trailing ?? '') :
              Text(trailing ?? '' ,style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 14)),
            ],
          ),
        )
      ],

    );
  }



}
