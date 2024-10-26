import 'package:flutter/material.dart';
import 'package:watch_store_3d_app_ui/componenets/details/animated_product_viewer.dart';
import 'package:watch_store_3d_app_ui/componenets/details/custom_bottom_nav_bar.dart';
import 'package:watch_store_3d_app_ui/componenets/details/custom_details_app_bar.dart';
import 'package:watch_store_3d_app_ui/componenets/details/sizes_and_colors.dart';
import 'package:watch_store_3d_app_ui/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: customDetailsAppBar(context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AnimatedProductViewer(),
            Text('Matrix Watch(Men\'s watch)',style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: kSecBlackColor, fontSize: 24),),
            SizedBox(height: size.height * 0.004,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star_border_rounded, color: kBlackColor,),
                SizedBox(height: size.width * 0.004,),
                Text('4.9/5.0(150 Reviews)',style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kSecBlackColor),),
              ],
            ),
            const Spacer(flex: 1,),
            SizesAndColors(size: size),
            const Spacer(),

          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }

}


