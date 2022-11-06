import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/widgets/helper_tools.dart';
import 'package:resume/widgets/text_local.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            TextLocalizations.of(context).skill.toUpperCase(),
            style: Constants.profile
                .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
        _buildSkill('Dart', 0.65),
        _buildSkill('JavaScript', 0.4),
        _buildSkill('Html', 0.8),
        _buildSkill('Css', 0.5),
        _buildSkill('Sass', 0.38),
      ],
    );
  }

  Row _buildSkill(String skill, double level) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              style: Constants.profile.copyWith(fontWeight: FontWeight.w600),
              textAlign: TextAlign.right,
            )),
        addHorizontalSpacing(10 * ScreenUtil().scaleWidth),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
            color: Colors.blue,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        )
      ],
    );
  }
}
