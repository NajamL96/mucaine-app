import 'package:flutter/material.dart';
import 'package:mucaine_app/screens/Admin/Analytics.dart';
import 'package:mucaine_app/screens/Admin/CreateUser.dart';
import 'package:mucaine_app/screens/Admin/Prescription.dart';
import 'package:mucaine_app/screens/Admin/ScoreCard.dart';
import 'package:mucaine_app/screens/Admin/Teams.dart';

import '../../Widgets/TopMobProfile.dart';
import '../../Widgets/TopdeskProfile.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'Assets/images/background.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              width > 600 ? topnotifydesk() : topnotifyMob(),
              width > 600 ? TopdeskProfile() : TopMobProfile(),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Adeel Shamsi',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'National Sales Manager',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              Stack(
                children: [
                  Image.asset(
                    'Assets/images/nameback.png',
                  ),
                  const Positioned(
                      left: 28,
                      child: Text(
                        'Zone',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              width > 600
                  ? const SizedBox(
                      height: 30,
                    )
                  : const SizedBox(
                      height: 20,
                    ),
              width > 600
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Analytics()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/analytics.png',
                            height: 150,
                            width: 150,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Prescription()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/prescription.png',
                            height: 150,
                            width: 150,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Teams()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/teams.png',
                            height: 150,
                            width: 150,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ScoreCard()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/scoreCard.png',
                            height: 150,
                            width: 150,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Report()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/ReportRed.png',
                            height: 150,
                            width: 150,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateUser()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/createUser.png',
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Analytics()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/analytics.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Prescription()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/prescription.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Teams()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/teams.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ScoreCard()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/scoreCard.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Report()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/ReportRed.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateUser()),
                            );
                          },
                          child: Image.asset(
                            'Assets/images/createUser.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ],
                    ),
              Container(
                  height: height * 0.5,
                  width: width * 0.7,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'Assets/images/reportBack.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                top: 30,
                              ),
                              child: Text(
                                "From",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "LOCATION",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "TIME/DATE",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                top: 20,
                              ),
                              child: Text(
                                "STATUS",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.red),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Image.asset(
                                  'Assets/images/filter.png',
                                  height: 50,
                                  width: 50,
                                )),
                          ],
                        ),
                        Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 10,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    color: Colors.grey[100],
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            '01',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            'Sehar Mustafa',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            'North Zone, Peshawar',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            '16/12/2022',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        const Text(
                                          'view comment',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'Assets/images/RedCross.png',
                                              height: 50,
                                              width: 50,
                                            ),
                                            const Text(
                                              'Rejected',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black),
                                            ),
                                            const SizedBox(
                                              width: 90,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ))
            ]),
      ),
    );
  }

  Widget topnotifydesk() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'Assets/images/notificationIcon.png',
            height: 20,
            width: 20,
          ),
          const SizedBox(
            width: 420,
          ),
          Image.asset(
            'Assets/images/menuDot.png',
            height: 20,
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget topnotifyMob() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'Assets/images/notificationIcon.png',
          ),
          const SizedBox(
            width: 280,
          ),
          Image.asset(
            'Assets/images/menuDot.png',
          )
        ],
      ),
    );
  }
}
