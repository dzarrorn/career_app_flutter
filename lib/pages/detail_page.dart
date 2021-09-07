import 'package:career_app_flutter/theme.dart';
import 'package:career_app_flutter/widgets/posted.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String jobDetail;
  final String imageUrl;
  DetailPage({
    this.imageUrl,
    this.jobDetail,
  });
  @override
  Widget build(BuildContext context) {
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
                          child: Image.asset(
                            imageUrl,
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
                          jobDetail,
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
                  Posted(
                    imageUrl: 'assets/google.png',
                    title: 'Front-End Developer,',
                    sub: 'Google',
                  ),
                  Posted(
                    imageUrl: 'assets/instagram.png',
                    title: 'UI Designer,',
                    sub: 'Instagram',
                  ),
                  Posted(
                    imageUrl: 'assets/facebook.png',
                    title: 'Data Scientist,',
                    sub: 'Facebook',
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
                  Posted(
                    imageUrl: 'assets/google.png',
                    title: 'Front-End Developer,',
                    sub: 'Google',
                  ),
                  Posted(
                    imageUrl: 'assets/instagram.png',
                    title: 'UI Designer,',
                    sub: 'Instagram',
                  ),
                  Posted(
                    imageUrl: 'assets/facebook.png',
                    title: 'Data Scientist,',
                    sub: 'Facebook',
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
