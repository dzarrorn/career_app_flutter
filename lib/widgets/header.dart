import 'package:career_app_flutter/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:career_app_flutter/theme.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
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
                userProvider.user.name,
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
