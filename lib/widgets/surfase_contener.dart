

import 'package:flutter/material.dart';
import 'package:shop_blog/res/dimens.dart';

class SurfaseContener extends StatelessWidget {
  const SurfaseContener({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.sizeOf(context);

    return Container(
      margin: EdgeInsets.fromLTRB(AppDimens.medium, AppDimens.medium, AppDimens.medium, 0),
      padding: EdgeInsets.all(AppDimens.medium),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.small),
        color: Colors.grey[300],
      ),

      child: child,
    );
  }
}
