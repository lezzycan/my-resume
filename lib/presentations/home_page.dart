// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/widgets/helper_tools.dart';
import 'package:resume/widgets/text_local.dart';

import '../widgets/skils.dart';
import '../widgets/social.dart';
import '../widgets/summary.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
              child: Column(
            children: [
              addVerticalSpacing(
                20 * ScreenUtil().scaleHeight,
              ),
              Row(
                children: [
                  Container(
                    height: deviceOrientation == Orientation.portrait
                        ? 140.h
                        : 160.h,
                    width: deviceOrientation == Orientation.portrait
                        ? 140.w
                        : 50.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                        //  colorFilter: ColorFilter.linearToSrgbGamma(),
                        image: AssetImage('assets/waheed.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  addHorizontalSpacing(10 * ScreenUtil().scaleWidth),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text('waheed olalekan toheeb'.toUpperCase(),
                            style: Constants.profile
                                .copyWith(fontWeight: FontWeight.bold)),
                      ),
                      FittedBox(
                        child: Text('Lezzycan', style: Constants.profile),
                      ),
                      FittedBox(
                          child: Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 16.sp,
                          // color: Colors.black,
                        ),
                      )),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          Text(
                            '5 Kokumo Str, Ogba, Lagos, Nigeria 100001.',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              addVerticalSpacing(20 * ScreenUtil().scaleWidth),
              SocialMedia(),
              addVerticalSpacing(20 * ScreenUtil().scaleWidth),
              Summary(),
              addVerticalSpacing(20 * ScreenUtil().scaleWidth),
              Skills(),
              addVerticalSpacing(20 * ScreenUtil().scaleWidth),
              Text(
                 TextLocalizations.of(context).third_string)
            ],
          )),
        ),
      ),
    );
  }
}
