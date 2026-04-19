import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mucaine_app/screens/Admin/CreateUser.dart';
import 'package:mucaine_app/screens/Admin/Prescription.dart';
import 'package:mucaine_app/screens/Admin/Report.dart';
import 'package:mucaine_app/screens/Admin/Teams.dart';

import '../../Widgets/TopMobProfile.dart';
import '../../Widgets/TopdeskProfile.dart';
import 'Analytics.dart';

class ScoreCard extends StatefulWidget {
  const ScoreCard({super.key});

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  String? Color;
  final _colors = [HexColor('#F2C34C'), Colors.grey, Colors.amber];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                width > 600 ? const TopdeskProfile() : const TopMobProfile(),
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
                              'Assets/images/scorCardRed.png',
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
                              'Assets/images/report.png',
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
                              'Assets/images/scorCardRed.png',
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
                              'Assets/images/report.png',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: height * 0.6,
                        width: width * 0.44,
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 12, 8, 5),
                                        child: Text(
                                          'LEADERBOARD',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                      ),
                                      Text(
                                        'All Regions',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 150,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                        top: 20,
                                      ),
                                      child: Image.asset(
                                        'Assets/images/filter.png',
                                        height: 70,
                                        width: 70,
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 30,
                                    ),
                                    child: Text(
                                      "TERRITORY MANAGER",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.red),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 20,
                                    ),
                                    child: Text(
                                      "POINTS",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: HexColor('#FCDA4F'),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        '01',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Sehar Mustafa',
                                        style: TextStyle(
                                            fontSize: 14,
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
                                        "South Zone",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 120,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.done,
                                            color: Colors.green,
                                            size: 20,
                                          ),
                                          Text(
                                            '23',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 150,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: HexColor('#D3D3D3'),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        '01',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Sehar Mustafa',
                                        style: TextStyle(
                                            fontSize: 14,
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
                                        "South Zone",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 120,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.done,
                                            color: Colors.green,
                                            size: 20,
                                          ),
                                          Text(
                                            '23',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 150,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: HexColor('#F79552'),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        '01',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Sehar Mustafa',
                                        style: TextStyle(
                                            fontSize: 14,
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
                                        "South Zone",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 120,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.done,
                                            color: Colors.green,
                                            size: 20,
                                          ),
                                          Text(
                                            '23',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: 150,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: 5,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Visibility(
                                        visible: index > 2,
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Column(
                                            children: [
                                              Card(
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                      color: Colors.white,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                color: Colors.white,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(6.0),
                                                      child: Text(
                                                        '01',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(6.0),
                                                      child: Text(
                                                        'Sehar Mustafa',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 50,
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(6.0),
                                                      child: Text(
                                                        "South Zone",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 120,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(6.0),
                                                      child: Row(
                                                        children: const [
                                                          Icon(
                                                            Icons.done,
                                                            color: Colors.green,
                                                            size: 20,
                                                          ),
                                                          Text(
                                                            '23',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          SizedBox(
                                                            width: 150,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Divider(
                                                color: Colors.red,
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        )),
                    Column(
                      children: [
                        Container(
                          height: height * 0.2,
                          width: width * 0.1,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'Assets/images/tmscord.png',
                                ),
                                fit: BoxFit.fill),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "South Zone",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Image.asset(
                                  'Assets/images/achiver.png',
                                  height: 70,
                                  width: 70,
                                ),
                                const Text(
                                  "October",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                const Text(
                                  "Syed Ali Hussain",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Image.asset(
                                      'Assets/images/achiverbottom.png',
                                      height: 40,
                                      width: 80,
                                    ),
                                    const Positioned(
                                      top: 13,
                                      left: 28,
                                      child: Text(
                                        "200",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.red),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                        Container(
                          height: height * 0.2,
                          width: width * 0.1,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'Assets/images/tmscord.png',
                                ),
                                fit: BoxFit.fill),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "South Zone",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Image.asset(
                                  'Assets/images/achiver.png',
                                  height: 70,
                                  width: 70,
                                ),
                                const Text(
                                  "October",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                const Text(
                                  "Syed Ali Hussain",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Image.asset(
                                      'Assets/images/achiverbottom.png',
                                      height: 40,
                                      width: 80,
                                    ),
                                    const Positioned(
                                      top: 13,
                                      left: 28,
                                      child: Text(
                                        "200",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.red),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                        Container(
                          height: height * 0.2,
                          width: width * 0.1,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'Assets/images/tmscord.png',
                                ),
                                fit: BoxFit.fill),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "South Zone",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Image.asset(
                                  'Assets/images/achiver.png',
                                  height: 70,
                                  width: 70,
                                ),
                                const Text(
                                  "October",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                const Text(
                                  "Syed Ali Hussain",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Image.asset(
                                      'Assets/images/achiverbottom.png',
                                      height: 40,
                                      width: 80,
                                    ),
                                    const Positioned(
                                      top: 13,
                                      left: 28,
                                      child: Text(
                                        "200",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.red),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
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

  void main() {
    final myList = [1, 2, 3];

    for (var i = 0; i < 3; i++) {
      print(myList[i % myList.length]);
    }
  }
}
