import 'package:career_app_flutter/models/job_model.dart';
import 'package:career_app_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescPage extends StatefulWidget {
  final JobModel job;
  DescPage(this.job);
  @override
  _DescPageState createState() => _DescPageState();
}

class _DescPageState extends State<DescPage> {
  bool isApplied = false;
  Widget cancelButton() {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 2 * 80,
        height: 45,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: pinkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
          ),
          onPressed: () {
            setState(() {
              isApplied = !isApplied;
            });
          },
          child: Text(
            'Cancel Apply',
            style: mediumWhite.copyWith(
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  Widget applyButton() {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 2 * 80,
        height: 45,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: purpleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
          ),
          onPressed: () {
            setState(() {
              isApplied = !isApplied;
            });
          },
          child: Text(
            'Apply for Job',
            style: mediumWhite.copyWith(
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  Widget success() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(49),
        child: Container(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 9,
            bottom: 9,
          ),
          decoration: BoxDecoration(
            color: Color(0xffECEDF1),
          ),
          child: Text(
            'You have applied this job and the\nrecruiter will contact you',
            style: GoogleFonts.poppins(
              color: Color(0xffA2A6B4),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

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
                isApplied
                    ? Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          success(),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      )
                    : SizedBox(
                        height: 80,
                      ),
                Center(
                  child: Image.network(
                    //! NOTE: Karena stateful widget harus ditambahkan widget.
                    widget.job.companyLogo,
                    width: 58.63,
                    height: 60,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  widget.job.name,
                  style: semiBoldBlack.copyWith(
                    fontSize: 20,
                  ),
                )),
                SizedBox(
                  height: 2,
                ),
                Center(
                  child: Text(
                    '${widget.job.companyName} • ${widget.job.location}',
                    style: regulerGrey.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About the job',
                        style: mediumBlack.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/dot.png',
                            width: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Full-Time On Site',
                            style: lightGrey.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/dot.png',
                            width: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Start at \$18,000 per month',
                            style: lightGrey.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Qualifications',
                        style: mediumBlack.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/dot.png',
                            width: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Candidate must possess at least a\nBachelor\'s Degree.',
                            style: lightGrey.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/dot.png',
                            width: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Able to use Microsoft Office and Google\nbased service.',
                            style: lightGrey.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/dot.png',
                            width: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Have an excellent time management,\ngood at organized and details',
                            style: lightGrey.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Responsibilities',
                        style: mediumBlack.copyWith(fontSize: 14),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/dot.png',
                            width: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Initiate and promote any programs, events,\ntraining, or activities.',
                            style: lightGrey.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/dot.png',
                            width: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Assessing and anticipating needs and\ncollaborate with Division.',
                            style: lightGrey.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                isApplied ? cancelButton() : applyButton(),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Message Recruiter',
                      style: lightGrey.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
