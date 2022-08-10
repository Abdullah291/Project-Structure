import 'package:flutter/material.dart';

class DrawerTileWidget extends StatelessWidget {
  const DrawerTileWidget({Key? key, this.leading, this.title, this.onTap}) : super(key: key);

  final String? leading;
  final String? title;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leading == null ? SizedBox.shrink():  Image.asset(leading.toString(),),
      title: Text(title ?? "",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
    );
  }
}
