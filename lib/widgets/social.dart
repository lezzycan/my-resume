import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/widgets/helper_tools.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    var scaleWidth = ScreenUtil().scaleWidth;
    var scaleHeight = ScreenUtil().scaleHeight;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SocialLinks(
          scaleWidth: scaleWidth,
          text: 'waheedolalekan23@gmail.com',
          imageUrl: 'assets/gmail.jfif',
        ),
       // addVerticalSpacing(8 * scaleHeight),
        SocialLinks(
            scaleWidth: scaleWidth,
            text: 'https://twitter.com/lezzycan',
            imageUrl: 'assets/twitt.jfif'),
        SocialLinks(
          scaleWidth: scaleWidth,
          text: 'https://github.com/lezzycan',
          imageUrl: 'assets/github.jfif',
        ),
        SocialLinks(
          scaleWidth: scaleWidth,
          text: 'https://www.linkedin.com/in/waheed-olalekan-728bab214 ',
          imageUrl: 'assets/linkedIn.jfif',
        ),
      ],
    );
  }
}

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
    required this.scaleWidth,
    required this.text,
    required this.imageUrl,
  }) : super(key: key);

  final double scaleWidth;
  final String text;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image(
        image: AssetImage(imageUrl),
        fit: BoxFit.contain,
        height: 20,
        width: 20,
      ),
      addHorizontalSpacing(10 * scaleWidth),
      Flexible(
        child: FittedBox(
          child: Text(
            text,
            style: Constants.profile,
          ),
        ),
      ),
    ]);
  }
}
