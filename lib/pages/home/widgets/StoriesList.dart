import 'package:flutter/material.dart';
import 'package:insta_responsivo_app/pages/home/widgets/StorieCircle.dart';
import 'package:responsive_framework/responsive_framework.dart';
class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;
    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(vertical:mobile ? 15: 35),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal:10),
        separatorBuilder: (context,index) => const SizedBox(width:16),
        itemCount: 15,
        itemBuilder: (context,index){
          return StorieCircle();
        },
      ),
    );
  }
}