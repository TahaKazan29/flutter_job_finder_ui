import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_finder_ui/constants.dart';
import 'package:flutter_job_finder_ui/widgets/widgets.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen(
      {Key? key,
      required this.jobTitle,
      required this.description,
      required this.company,
      required this.responsibility,
      required this.info})
      : super(key: key);
  final String jobTitle;
  final String description;
  final String company;
  final String responsibility;
  final String info;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backButton(context),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset('assets/images/master2.png'),
                    Text(
                      jobTitle,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      jobTitle,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: kYellowColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      info,
                      style: const TextStyle(
                        fontSize: 16,
                        letterSpacing: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Job Descriptions',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            description,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Responsibilities',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            responsibility,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 16,
                              letterSpacing: 0.5,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        AppFeature(
                          title: 'Earn Skill Badge',
                          subTitle:
                              'Skills assessments help you to stand Out to recruiters',
                          color: kYellowColor,
                          height: size.height / 4,
                          component: const IconBox(
                            width: 50,
                            height: 50,
                            radius: 20,
                            color: Colors.white,
                            icon: CupertinoIcons.arrow_right,
                            iconColor: Colors.black,
                          ),
                        ),
                        AppFeature(
                          title: 'Similar Job Alert',
                          subTitle:
                              'Product Designer | Typrography | Google LLC',
                          color: kPurpleColor,
                          height: 110,
                          margin: const EdgeInsets.only(top: 100),
                          component: SizedBox(
                            width: 50,
                            child: Switch(
                              activeColor: Colors.black,
                              activeTrackColor: Colors.white,
                              value: true,
                              onChanged: (val) {},
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

backButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 40, left: 20),
    child: IconButton(
      color: Colors.white,
      iconSize: 28,
      icon: const Icon(CupertinoIcons.arrow_left),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  );
}
