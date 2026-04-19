import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:mucaine_app/screens/Admin/CreateUser.dart';
import 'package:mucaine_app/screens/Admin/Prescription.dart';
import 'package:mucaine_app/screens/Admin/Report.dart';
import 'package:mucaine_app/screens/Admin/ScoreCard.dart';
import 'package:mucaine_app/screens/Admin/Teams.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../../Widgets/TopMobProfile.dart';
import '../../Widgets/TopdeskProfile.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  final List<ChartData> chartData = <ChartData>[
    ChartData('IND', 24),
    ChartData('AUS', 20),
    ChartData('USA', 27),
    ChartData('DEU', 57),
    ChartData('ITA', 30),
    ChartData('UK', 41),
  ];
  final List<Color> colors = <Color>[
    const Color.fromRGBO(75, 135, 185, 1),
    const Color.fromRGBO(192, 108, 132, 1),
    const Color.fromRGBO(246, 114, 128, 1),
    const Color.fromRGBO(248, 177, 149, 1),
    const Color.fromRGBO(116, 180, 155, 1)
  ];
  final List<double> stops = <double>[
    0.2,
    0.4,
    0.6,
    0.8,
    1,
  ];
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
                    height: 60,
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
                          'Assets/images/analyticRed.png',
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
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
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
                              'Assets/images/analyticRed.png',
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
                        ],
                      ),
                      Row(
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
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: SfCartesianChart(
                            primaryXAxis: CategoryAxis(),
                            series: <CartesianSeries<ChartData, String>>[
                              AreaSeries<ChartData, String>(
                                  dataSource: chartData,
                                  onCreateShader:
                                      (ShaderDetails chartShaderDetails) {
                                    return ui.Gradient.linear(
                                        chartShaderDetails.rect.topRight,
                                        chartShaderDetails.rect.centerLeft,
                                        colors,
                                        stops);
                                  },
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y),
                            ]),
                      ),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('Assets/images/mucainebutton.png'),
                    Image.asset('Assets/images/Alcuflex.png'),
                    Image.asset(
                      'Assets/images/combined.png',
                    )
                  ],
                )
              ],
            )
          ],
        ),
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

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}
