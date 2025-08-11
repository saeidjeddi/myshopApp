

import 'package:flutter/material.dart';
import 'package:shop_blog/components/text_style.dart';

class RegisterAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RegisterAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(size.width, size.height * .1),
      child: SafeArea(
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('ثبت نام', style: AppTextStyles.title),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(size.height*.1);
}
