import 'package:career_app_flutter/pages/desc_page.dart';
import 'package:career_app_flutter/theme.dart';
import 'package:flutter/material.dart';

class Posted extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String sub;
  Posted({
    this.imageUrl,
    this.sub,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 34,
        top: 16,
        right: 24,
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DescPage(),
                ),
              );
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imageUrl,
                  width: 43.97,
                  height: 45,
                ),
                SizedBox(
                  width: 27.3,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: mediumBlack.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        sub,
                        style: regulerGrey.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 18.5,
                      ),
                      Divider(
                        color: Color(0xffECEDF1),
                        thickness: 1,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
