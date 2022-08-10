import 'package:flutter/material.dart';
import 'package:resident/core/theme/resident_radius.dart';
import 'package:resident/core/theme/resident_sizedbox.dart';
import 'package:resident/core/theme/resident_spacing.dart';

class HomeGridViewWidget extends StatelessWidget {
  const HomeGridViewWidget({Key? key,required this.title,required this.image,this.color}) : super(key: key);

  final String image;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(ResidentRadius.cornerRadius100),
          child: Material(
            color: color ?? Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(ResidentRadius.cornerRadius100),
            child: InkWell(
              highlightColor: Theme.of(context).colorScheme.surface,
              splashColor: Theme.of(context).colorScheme.surface,
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.all(ResidentSpacing.spacing25),
                child: Image.asset(image.toString(),width: 25,height: 25,),
              ),
            ),
          ),
        ),
        ResidentSizeBox().h8,
        Expanded(
          child: Text(title,
          semanticsLabel: title,
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.center,
          maxLines: 2,
          softWrap: true,
          overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }
}
