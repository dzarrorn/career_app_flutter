import 'package:career_app_flutter/pages/detail_page.dart';
import 'package:career_app_flutter/theme.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String text;
  final String imageUrl;
  Categories({
    this.imageUrl,
    this.text,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              imageUrl: imageUrl,
              jobDetail: text,
            ),
          ),
        );
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 150,
                  height: 200,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        bottom: 16,
                      ),
                      child: Text(
                        text,
                        style: mediumWhite.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(imageUrl))),
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
