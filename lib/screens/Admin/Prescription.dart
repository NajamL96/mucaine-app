import 'package:flutter/material.dart';
import 'package:mucaine_app/screens/Admin/Analytics.dart';
import 'package:mucaine_app/screens/Admin/CreateUser.dart';
import 'package:mucaine_app/screens/Admin/Report.dart';
import 'package:mucaine_app/screens/Admin/ScoreCard.dart';
import 'package:mucaine_app/screens/Admin/Teams.dart';

import '../../Widgets/TopMobProfile.dart';
import '../../Widgets/TopdeskProfile.dart';

class Prescription extends StatefulWidget {
  const Prescription({super.key});

  @override
  State<Prescription> createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
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
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
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
                        'Assets/images/prescriptionRed.png',
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
                        'Assets/images/prescriptionRed.png',
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
            mainAxisAlignment: width > 600
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: width > 600 ? height * 0.13 : height * 0.13,
                    width: width > 600 ? width * 0.2 : width * 0.24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'NATIONAL FIGURE',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '1325',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        width > 600
                            ? Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Mucaine',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Alcuflex',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Combined',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Total Figure',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: width > 600 ? height * 0.35 : height * 0.35,
                      width: width > 600 ? width * 0.2 : width * 0.24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'SOUTH ZONE',
                              style: TextStyle(
                                  fontSize: width > 600 ? 20 : 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                    color: Colors.red,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            'Karachi A',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white),
                                          ),
                                        ),
                                        width > 600
                                            ? SizedBox(
                                                width: 50,
                                              )
                                            : SizedBox(),
                                        Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            '256',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          width > 600
                              ? Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Mucaine',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Alcuflex',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Combined',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Total Figure',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: width > 600 ? height * 0.13 : height * 0.13,
                    width: width > 600 ? width * 0.2 : width * 0.24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'LEADING ZONE',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        width > 600
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'South Zone, Lhr',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Text(
                                          '992',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Text(
                                          'Leading by 223 points',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Text(
                                      'South Zone, Lhr',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Text(
                                          '992',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Text(
                                          'Leading by 223 points',
                                          style: TextStyle(
                                              fontSize: 7,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                        width > 600
                            ? Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Mucaine',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Alcuflex',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Combined',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Total Figure',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: width > 600 ? height * 0.35 : height * 0.35,
                      width: width > 600 ? width * 0.2 : width * 0.24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'CENTER ZONE',
                              style: TextStyle(
                                  fontSize: width > 600 ? 20 : 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                    color: Colors.red,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            'Karachi A',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white),
                                          ),
                                        ),
                                        width > 600
                                            ? SizedBox(
                                                width: 50,
                                              )
                                            : SizedBox(),
                                        Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            '256',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          width > 600
                              ? Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Mucaine',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Alcuflex',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Combined',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Total Figure',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: width > 600 ? height * 0.13 : height * 0.13,
                    width: width > 600 ? width * 0.2 : width * 0.24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'LEADING TM',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        width > 600
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Danish Idress',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    '(Central Zone)',
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  width > 600
                                      ? SizedBox(
                                          width: 50,
                                        )
                                      : SizedBox(),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text(
                                      '556',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      'Danish Idress',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    '(Central Zone)',
                                    style: TextStyle(
                                        fontSize: 7,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text(
                                      '556',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                        width > 600
                            ? Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Mucaine',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Alcuflex',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Combined',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Icon(
                                      Icons.square,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        'Total Figure',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox()
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: width > 600 ? height * 0.35 : height * 0.35,
                      width: width > 600 ? width * 0.2 : width * 0.24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'NORTH ZONE',
                              style: TextStyle(
                                  fontSize: width > 600 ? 20 : 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                    color: Colors.red,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            'Karachi A',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white),
                                          ),
                                        ),
                                        width > 600
                                            ? SizedBox(
                                                width: 50,
                                              )
                                            : SizedBox(),
                                        Padding(
                                          padding: EdgeInsets.all(6.0),
                                          child: Text(
                                            '256',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          width > 600
                              ? Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Mucaine',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Alcuflex',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Combined',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.square,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: Text(
                                          'Total Figure',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : SizedBox()
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ));
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
