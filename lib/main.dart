import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mucaine_app/screens/Admin/Analytics.dart';
import 'package:mucaine_app/screens/Admin/CreateUser.dart';
import 'package:mucaine_app/screens/Admin/Dashboard.dart';
import 'package:mucaine_app/screens/Admin/Prescription.dart';
import 'package:mucaine_app/screens/Admin/Report.dart';
import 'package:mucaine_app/screens/Admin/ScoreCard.dart';
import 'package:mucaine_app/screens/Admin/Teams.dart';
import 'package:mucaine_app/screens/auth/Registration.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
// Replace with actual values
    options: const FirebaseOptions(
      apiKey: "YOUR_FIREBASE_API_KEY",
      appId: "YOUR_FIREBASE_APP_ID",
      messagingSenderId: "YOUR_FIREBASE_MESSAGING_SENDER_ID",
      projectId: "YOUR_FIREBASE_PROJECT_ID",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mucaine App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
            future: _initialization,
            builder: (context, snapshot) {
              if (snapshot.hasError) {}
              if (snapshot.connectionState == ConnectionState.done) {
                return Analytics();
              }
              return const Center(child: CircularProgressIndicator());
            }));
  }
}
