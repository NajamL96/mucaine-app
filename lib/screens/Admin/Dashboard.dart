import 'package:flutter/material.dart';
import 'package:mucaine_app/Widgets/TopMobProfile.dart';
import 'package:mucaine_app/Widgets/TopdeskProfile.dart';
import 'package:mucaine_app/screens/Admin/Analytics.dart';
import 'package:mucaine_app/screens/Admin/CreateUser.dart';
import 'package:mucaine_app/screens/Admin/Prescription.dart';
import 'package:mucaine_app/screens/Admin/Report.dart';
import 'package:mucaine_app/screens/Admin/ScoreCard.dart';
import 'package:mucaine_app/screens/Admin/Teams.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                    height: 80,
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
                          height: 100,
                          width: 100,
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
                          height: 100,
                          width: 100,
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
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
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
                                builder: (context) => const ScoreCard()),
                          );
                        },
                        child: Image.asset(
                          'Assets/images/scoreCard.png',
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
                          'Assets/images/report.png',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const CreateUser()),
                          // );
                        },
                        child: Image.asset(
                          'Assets/images/createUser.png',
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
                                builder: (context) => const ScoreCard()),
                          );
                        },
                        child: Image.asset(
                          'Assets/images/scoreCard.png',
                          height: 100,
                          width: 100,
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
                          'Assets/images/report.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const CreateUser()),
                          // );
                        },
                        child: Image.asset(
                          'Assets/images/createUser.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
          ],
        ),
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
          )
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
