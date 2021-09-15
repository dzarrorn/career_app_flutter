import 'package:career_app_flutter/models/category_model.dart';
import 'package:career_app_flutter/models/job_model.dart';
import 'package:career_app_flutter/providers/category_provider.dart';
import 'package:career_app_flutter/providers/job_provider.dart';
import 'package:career_app_flutter/theme.dart';
import 'package:career_app_flutter/widgets/categories.dart';
import 'package:career_app_flutter/widgets/header.dart';
import 'package:career_app_flutter/widgets/posted.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var jobProvider = Provider.of<JobProvider>(context);
    var categoryProvider = Provider.of<CategoryProvider>(context);
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
              FutureBuilder<List<CategoryModel>>(
                future: categoryProvider.getCategories(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    int index = -1;
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: snapshot.data.map((category) {
                          index++;
                          return Container(
                            margin: EdgeInsets.only(left: index == 0 ? 24 : 0),
                            child: Categories(category),
                          );
                        }).toList(),
                      ),
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
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
              SizedBox(
                height: 5,
              ),
              FutureBuilder<List<JobModel>>(
                future: jobProvider.getJobs(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      children:
                          snapshot.data.map((job) => Posted(job)).toList(),
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
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
