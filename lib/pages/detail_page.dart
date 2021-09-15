import 'package:career_app_flutter/models/category_model.dart';
import 'package:career_app_flutter/models/job_model.dart';
import 'package:career_app_flutter/providers/job_provider.dart';
import 'package:career_app_flutter/theme.dart';
import 'package:career_app_flutter/widgets/posted.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  // final String jobDetail;
  // final String imageUrl;
  final CategoryModel category;
  DetailPage(this.category);
  @override
  Widget build(BuildContext context) {
    var jobProvider = Provider.of<JobProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 270,
                          child: Image.network(
                            category.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 178,
                          left: 24,
                        ),
                        child: Text(
                          category.name,
                          style: semiBoldWhite.copyWith(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          top: 216,
                        ),
                        child: Text(
                          '12.309 available',
                          style: regulerWhite.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24,
                    ),
                    child: Text(
                      'Big Companies',
                      style: regulerBlack.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  FutureBuilder<List<JobModel>>(
                    future: jobProvider.getJobsCategory(category.name),
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
                    height: 30.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24,
                    ),
                    child: Text(
                      'New Startup',
                      style: regulerBlack.copyWith(
                        fontSize: 16,
                      ),
                    ),
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
                ],
              ),
            )),
      ),
    );
  }
}
