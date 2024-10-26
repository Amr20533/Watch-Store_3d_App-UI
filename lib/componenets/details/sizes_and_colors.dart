import 'package:flutter/material.dart';
import 'package:watch_store_3d_app_ui/constants.dart';

class SizesAndColors extends StatelessWidget {
  const SizesAndColors({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Column(
          children: [
            Text('Colors',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kBlackColor),),
            SizedBox(height: size.height * 0.008,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) => Container(
                height: 25, width: 25,
                margin: EdgeInsets.only(right: size.width * 0.02,),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors[index],
                ),
              )),
            ),


          ],
        )),
        Expanded(child: Column(
          children: [
            Text('Sizes',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kBlackColor),),
            SizedBox(height: size.height * 0.008,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(sizes.length, (index) => Padding(
                padding: EdgeInsets.only(right: size.width * 0.03,),
                child: Text(sizes[index].toString(), style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kBlackColor),),
              ),
              ),
            ),
          ],
        )),

      ],
    );
  }
}
