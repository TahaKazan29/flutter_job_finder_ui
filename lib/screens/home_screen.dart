import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_finder_ui/constants.dart';
import 'package:flutter_job_finder_ui/screens/job_detail_screen.dart';
import 'package:flutter_job_finder_ui/screens/screens.dart';
import 'package:flutter_job_finder_ui/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kPrimaryLightColor,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        color: Colors.white,
                        iconSize: 28,
                        icon: const Icon(
                            CupertinoIcons.line_horizontal_3_decrease),
                        onPressed: () {},
                      ),
                      avatar(context),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 10),
                        child: Text(
                          'Find the World\'s most Amazing Job',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      searchForJobs(size),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Job Matched',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      jobMatched(context, size),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Job Category',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      jobCategory(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

jobCategory() {
  return Row(
    children: const [
      Expanded(
        flex: 1,
        child: CategoryBox(
          boxColor: kYellowColor,
          title: 'Desing',
          subTitle: '3.2k Jobs',
          iconBox: IconBox(
            height: 40,
            width: 40,
            radius: 10,
            color: Colors.white,
            icon: CupertinoIcons.wand_stars_inverse,
            iconColor: kPrimaryLightColor,
          ),
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Expanded(
        flex: 1,
        child: CategoryBox(
          boxColor: kPinkColor,
          title: 'Network',
          subTitle: '2.8k Jobs',
          iconBox: IconBox(
            height: 40,
            width: 40,
            radius: 10,
            color: Colors.white,
            icon: CupertinoIcons.flowchart_fill,
            iconColor: kPrimaryLightColor,
          ),
        ),
      ),
       SizedBox(
        width: 5,
      ),
      Expanded(
        flex: 1,
        child: CategoryBox(
          boxColor: kYellowColor,
          title: 'Security',
          subTitle: '4.3k Jobs',
          iconBox: IconBox(
            height: 40,
            width: 40,
            radius: 10,
            color: Colors.white,
            icon: CupertinoIcons.checkmark_shield_fill,
            iconColor: kPrimaryLightColor,
          ),
        ),
      ),
    ],
  );
}

jobMatched(BuildContext context, Size size) {
  return InkWell(
    onTap: (){
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => const JobDetailScreen(
        jobTitle: 'Product Designer',
        company: 'Master Card',
        description: "We're team of youthful, intelligent and dedicated creatives who have an unrivaled energy and passion for crafting beautiful and meaningful products. We strive to follow al UX processes of ideation, research and MVP for our product designs to enable output that is both aesthetic and strategic.",
        responsibility: 'Keep the interface beautiful and ease to use.',
        info: '1600 Amphitheatre Parkway, Mountain View',
      )));
    },
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kGreenColor),
      child: Padding(
        padding: EdgeInsets.only(
            top: 10, left: size.width / 15, right: size.width / 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Master Card',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Image.asset('assets/images/master1.png')
              ],
            ),
            const Text(
              'Sr. Product Designer',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                features('User Interface'),
                const SizedBox(
                  width: 10,
                ),
                features('User Research / Flow'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(
                  CupertinoIcons.clock,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Be in the first',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  ' 31 applicants',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    employees(imageUrl: "assets/images/employee1.jpg"),
                    Container(
                      child: employees(imageUrl: "assets/images/employee2.jpg"),
                      margin: const EdgeInsets.only(left: 35),
                    ),
                    Container(
                      child: employees(imageUrl: "assets/images/employee3.jpg"),
                      margin: const EdgeInsets.only(left: 70),
                    ),
                    Container(
                      child: employees(text: '28'),
                      margin: const EdgeInsets.only(left: 105),
                    ),
                  ],
                ),
                const Text(
                  '6 Hours Ago',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ),
  );
}

employees({imageUrl = "", text}) {
  return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30),
      ),
      child: imageUrl != ""
          ? CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(imageUrl),
            )
          : CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black87,
              child: Text(text, style: const TextStyle(color: Colors.white)),
            ));
}

features(text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      text,
      style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
    ),
  );
}

searchForJobs(Size size) {
  return Container(
    width: size.width,
    height: 65,
    decoration: BoxDecoration(
      color: kPrimaryColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        IconButton(
          padding: const EdgeInsets.only(left: 20, right: 20),
          color: Colors.white,
          iconSize: 28,
          icon: const Icon(CupertinoIcons.search),
          onPressed: () {},
        ),
        Expanded(
          child: SizedBox(
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Search for jobs',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                  border: InputBorder.none),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: IconBox(
              width: 55, height: 50, icon: CupertinoIcons.slider_horizontal_3),
        ),
      ],
    ),
  );
}

avatar(BuildContext context) {
  return InkWell(
    borderRadius: const BorderRadius.all(Radius.circular(20)),
    onTap: () {
       Navigator.push(context,MaterialPageRoute(builder: (context) => const ProfileScreen()));

    },
    child: CircleAvatar(
      radius: 25,
      backgroundColor: kPurpleColor,
      child: Image.asset("assets/images/profile.png"),
    ),
  );
}
