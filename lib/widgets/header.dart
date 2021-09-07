import 'package:flutter/material.dart';
import 'package:career_app_flutter/theme.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 30,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy',
                style: regulerGrey.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Zarror Nibros',
                style: semiBoldBlack.copyWith(
                  fontSize: 24,
                ),
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/user.png',
            width: 58,
            height: 58,
          ),
        ],
      ),
    );
  }
}
