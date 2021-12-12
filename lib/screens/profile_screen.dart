import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_finder_ui/constants.dart';
import 'package:flutter_job_finder_ui/widgets/icon_box.dart';
import 'package:flutter_job_finder_ui/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: IconButton(
                color: Colors.white,
                iconSize: 28,
                icon: const Icon(CupertinoIcons.arrow_left),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            profileImg(),
            Container(
              width: size.width,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
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
                          'James \nMartinia Junior',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 30,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        jobSearchStatus(),
                        const SizedBox(
                          height: 40,
                        ),
                        statistics(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.1),
                    child: AppFeature(
                      title: 'Complete Profile',
                      subTitle: 'Personel | Job Experience | Certification',
                      color: kGreenColor,
                      height: size.height / 8,
                      component: const IconBox(
                        height: 50,
                        width: 50,
                        radius: 20,
                        color: Colors.white,
                        icon: CupertinoIcons.arrow_right,
                        iconColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

statistics() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      CustomStatistics(title: 'Applied', value: '98'),
      CustomStatistics(title: 'Reviewed', value: '73'),
      CustomStatistics(title: 'Contacted', value: '19'),
    ],
  );
}

jobSearchStatus() {
  return Row(
    children: const [
      Text(
        'Actively Looking',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 22,
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
            color: Colors.grey),
      ),
      SizedBox(
        width: 20,
      ),
      IconBox(
        color: kPinkColor,
        width: 30,
        height: 30,
        icon: CupertinoIcons.checkmark_alt,
        iconColor: Colors.black,
      )
    ],
  );
}

profileImg() {
  return Container(
    alignment: Alignment.center,
    child: Image.asset(
      'assets/images/profile.png',
      scale: 1.5,
    ),
  );
}
