import 'package:flutter/material.dart';
import 'package:watch_store_3d_app_ui/constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Price", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kBlackColor),),
                Text("Rx. 1499.00", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.black87, fontSize: 20),),
              ],
            ),
          ),
        )),
        const SizedBox(width: 10,),
        Expanded(child: InkWell(
          onTap: (){

          },
          child: Container(
            height: 70,
            decoration: const BoxDecoration(
              color: kCyanColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(22))
            ),
            child: Center(
              child: Text("Buy Now", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white, fontSize: 20),),
            ),
          ),
        ))
      ],
    );
  }
}
