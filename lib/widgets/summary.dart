// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:resume/utils/constants.dart';
import 'package:resume/widgets/text_local.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 200,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(color: Colors.blueGrey),
      child: Text(
        TextLocalizations.of(context).summary,
        style: Constants.profile.copyWith(color:Colors.white),
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
      ),
    );
  }
}
