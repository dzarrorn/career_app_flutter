import 'package:career_app_flutter/theme.dart';
import 'package:career_app_flutter/widgets/categories.dart';
import 'package:career_app_flutter/widgets/header.dart';
import 'package:career_app_flutter/widgets/posted.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        unselectedItemColor: greyColor,
        selectedItemColor: blackColor,
        currentIndex: 0,
        elevation: 0,
        iconSize: 24,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navbar1.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navbar2.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navbar3.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/navbar4.png'),
            ),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  'Hot Categories',
                  style: regulerBlack.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Categories(
                      imageUrl: 'assets/category1.png',
                      text: 'Website Developer',
                    ),
                    Categories(
                      imageUrl: 'assets/category2.png',
                      text: 'Mobile Developer',
                    ),
                    Categories(
                      imageUrl: 'assets/category3.png',
                      text: 'App Designer',
                    ),
                    Categories(
                      imageUrl: 'assets/category4.png',
                      text: 'Conten Writer',
                    ),
                    Categories(
                      imageUrl: 'assets/category5.png',
                      text: 'Video Grapher',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  'Just Posted',
                  style: regulerBlack.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              Posted(
                imageUrl: 'assets/google.png',
                title: 'Front-End Developer',
                sub: 'Google',
              ),
              Posted(
                imageUrl: 'assets/instagram.png',
                title: 'UI Designer',
                sub: 'Instagram',
              ),
              Posted(
                imageUrl: 'assets/facebook.png',
                title: 'Data Scientist',
                sub: 'Facebook',
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
