import 'package:flutter/material.dart';
import 'package:watch_store_3d_app_ui/constants.dart';

AppBar customDetailsAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(onPressed: ()=> Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios)),
    title: Text('Details', style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: kBlackColor),),
    actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined, color: kBlackColor,))
    ],
  );
}
