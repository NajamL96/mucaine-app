import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mucaine_app/Widgets/Dashbutton.dart';
import 'package:mucaine_app/Widgets/TopdeskProfile.dart';
import 'package:mucaine_app/screens/Admin/Dashboard.dart';
import 'package:mucaine_app/screens/Admin/Prescription.dart';
import 'package:mucaine_app/screens/Admin/Report.dart';
import 'package:mucaine_app/screens/Admin/ScoreCard.dart';
import 'package:mucaine_app/screens/Admin/Teams.dart';

import '../../Widgets/TopMobProfile.dart';
import 'Analytics.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final _formKey = GlobalKey<FormState>();
  String? _dropDownValue;
  final items = ['South Zone', 'Center Zone', 'North Zone'];
  final SouthRegionsitems = ['Karachi-A', 'Karachi-B', 'Hyderabad', 'Sukkar'];
  final BricksItems = ['Karachi-A', 'Karachi-B', 'Hyderabad', 'Sukkar'];
  final TeamLeaditems = ['ZSM', 'RSM', 'TM'];
  String? ZoneDropValue;
  String? RegionDropValue;
  String? BricksDropValue;
  String? TMDropValue;

  int selected = 0;
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final employeeIdController = TextEditingController();
  final ContactController = TextEditingController();
  final PasswordController = TextEditingController();
  final DOBController = TextEditingController();
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
                            'Assets/images/createUserRed.png',
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
                            'Assets/images/createUserRed.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ],
                    ),
              width > 600
                  ? Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  child: TextFormField(
                                    controller: usernameController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: HexColor('#FFFFFF'),
                                      hintText: "Full Name",
                                      hintStyle: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SizedBox(
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  child: TextFormField(
                                    readOnly: true,
                                    controller: DOBController,
                                    onTap: () async {
                                      _selectDate();
                                    },
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: HexColor('#FFFFFF'),
                                      hintText: "Date of Birth",
                                      hintStyle: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SizedBox(
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  child: TextField(
                                    controller: employeeIdController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: HexColor('#FFFFFF'),
                                      hintText: "Employee ID",
                                      hintStyle: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SizedBox(
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  child: TextFormField(
                                    controller: ContactController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: HexColor('#FFFFFF'),
                                      hintText: "Contact No",
                                      hintStyle: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                          hint: const Text(
                                            'Zones',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          value: ZoneDropValue,
                                          iconSize: 23,
                                          focusColor: Colors.white,
                                          icon: const Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.red,
                                          ),
                                          isExpanded: true,
                                          items:
                                              items.map(buildMenuItem).toList(),
                                          onChanged: (value) {
                                            validator:
                                            (value) => value == null
                                                ? 'field required'
                                                : null;
                                            setState(() =>
                                                this.ZoneDropValue = value);
                                          }),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                          hint: const Text(
                                            'Regions',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          value: RegionDropValue,
                                          iconSize: 23,
                                          focusColor: Colors.white,
                                          icon: const Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.red,
                                          ),
                                          isExpanded: true,
                                          items: SouthRegionsitems.map(
                                                  buildMenuItem)
                                              .toList(),
                                          onChanged: (value) {
                                            validator:
                                            (value) => value == null
                                                ? 'field required'
                                                : null;
                                            setState(() =>
                                                this.RegionDropValue = value);
                                          }),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                          hint: const Text(
                                            'Allocated Bricks',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          value: BricksDropValue,
                                          iconSize: 23,
                                          focusColor: Colors.white,
                                          icon: const Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.red,
                                          ),
                                          isExpanded: true,
                                          items:
                                              items.map(buildMenuItem).toList(),
                                          onChanged: (value) {
                                            validator:
                                            (value) => value == null
                                                ? 'field required'
                                                : null;
                                            setState(() =>
                                                this.BricksDropValue = value);
                                          }),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                          hint: const Text(
                                            'Team Lead',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          value: TMDropValue,
                                          iconSize: 23,
                                          focusColor: Colors.white,
                                          icon: const Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.red,
                                          ),
                                          isExpanded: true,
                                          items:
                                              TeamLeaditems.map(buildMenuItem)
                                                  .toList(),
                                          onChanged: (value) {
                                            validator:
                                            (value) => value == null
                                                ? 'field required'
                                                : null;
                                            setState(
                                                () => this.TMDropValue = value);
                                          }),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  child: TextFormField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: HexColor('#FFFFFF'),
                                      hintText: "Email address",
                                      hintStyle: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: SizedBox(
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  child: TextFormField(
                                    controller: PasswordController,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: HexColor('#FFFFFF'),
                                      hintText: "Password",
                                      hintStyle: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Image.asset('Assets/images/unfill.png'),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: height * 0.05,
                              width: width * 0.22,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'Assets/images/redbutton.png',
                                    ),
                                    fit: BoxFit.fill),
                              ),
                              child: const Center(
                                child: Text(
                                  'Create User',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    )
                  : Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              height: height * 0.06,
                              width: width * 0.6,
                              child: TextFormField(
                                controller: usernameController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: HexColor('#FFFFFF'),
                                  hintText: "Full Name",
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              height: height * 0.06,
                              width: width * 0.6,
                              child: TextFormField(
                                readOnly: true,
                                controller: DOBController,
                                onTap: () async {
                                  _selectDate();
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: HexColor('#FFFFFF'),
                                  hintText: "Date of Birth",
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              height: height * 0.06,
                              width: width * 0.6,
                              child: TextField(
                                controller: employeeIdController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: HexColor('#FFFFFF'),
                                  hintText: "Employee ID",
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              height: height * 0.06,
                              width: width * 0.6,
                              child: TextFormField(
                                controller: ContactController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: HexColor('#FFFFFF'),
                                  hintText: "Contact No",
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                      hint: const Text(
                                        'Zones',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      value: ZoneDropValue,
                                      iconSize: 23,
                                      focusColor: Colors.white,
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.red,
                                      ),
                                      isExpanded: true,
                                      items: items.map(buildMenuItem).toList(),
                                      onChanged: (value) {
                                        validator:
                                        (value) => value == null
                                            ? 'field required'
                                            : null;
                                        setState(
                                            () => this.ZoneDropValue = value);
                                      }),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                      hint: const Text(
                                        'Regions',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      value: RegionDropValue,
                                      iconSize: 23,
                                      focusColor: Colors.white,
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.red,
                                      ),
                                      isExpanded: true,
                                      items:
                                          SouthRegionsitems.map(buildMenuItem)
                                              .toList(),
                                      onChanged: (value) {
                                        validator:
                                        (value) => value == null
                                            ? 'field required'
                                            : null;
                                        setState(
                                            () => this.RegionDropValue = value);
                                      }),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                      hint: const Text(
                                        'Allocated Bricks',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      value: BricksDropValue,
                                      iconSize: 23,
                                      focusColor: Colors.white,
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.red,
                                      ),
                                      isExpanded: true,
                                      items: items.map(buildMenuItem).toList(),
                                      onChanged: (value) {
                                        validator:
                                        (value) => value == null
                                            ? 'field required'
                                            : null;
                                        setState(
                                            () => this.BricksDropValue = value);
                                      }),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                      hint: const Text(
                                        'Team Lead',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      value: TMDropValue,
                                      iconSize: 23,
                                      focusColor: Colors.white,
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.red,
                                      ),
                                      isExpanded: true,
                                      items: TeamLeaditems.map(buildMenuItem)
                                          .toList(),
                                      onChanged: (value) {
                                        validator:
                                        (value) => value == null
                                            ? 'field required'
                                            : null;
                                        setState(
                                            () => this.TMDropValue = value);
                                      }),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: height * 0.06,
                              width: width * 0.6,
                              child: TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: HexColor('#FFFFFF'),
                                  hintText: "Email address",
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              height: height * 0.06,
                              width: width * 0.6,
                              child: TextFormField(
                                controller: PasswordController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: HexColor('#FFFFFF'),
                                  hintText: "Password",
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Image.asset('Assets/images/unfill.png'),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: height * 0.06,
                              width: width * 0.6,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'Assets/images/redbutton.png',
                                    ),
                                    fit: BoxFit.fill),
                              ),
                              child: const Center(
                                child: Text(
                                  'Create User',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Future _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));
    if (picked != null) {
      setState(() => {DOBController.text = picked.toString().substring(0, 10)});
    }
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );

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
