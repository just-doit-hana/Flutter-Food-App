import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DetectorloginScreen extends StatelessWidget {

  final String imageAsset;


   DetectorloginScreen({
    required this.imageAsset

  }) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 60.w,
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.orange.withOpacity(.09),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
           imageAsset,
            width: 15.w,
            height: 15.h,
          ),
        ),
      ),
    );
  }
}
