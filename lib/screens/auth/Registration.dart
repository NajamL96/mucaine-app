import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mucaine_app/screens/Admin/Dashboard.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool _isObscure = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool value = true;
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
          children: [
            width > 600
                ? const SizedBox(
                    height: 200,
                  )
                : const SizedBox(
                    height: 60,
                  ),
            const Text(
              "Login",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 100,
            ),
            width > 600
                ? DeskstopView(height, width)
                : Mobileview(height, width),
            width > 600
                ? Image.asset(
                    'Assets/images/bottomlogo.png',
                    height: 100,
                    width: 300,
                  )
                : Image.asset(
                    'Assets/images/bottomlogo.png',
                    height: 100,
                    width: 250,
                  )
          ],
        ),
      ),
    );
  }

  Widget Mobileview(height, width) {
    return Container(
        height: height * 0.5,
        width: width * 0.6,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'Assets/images/formback.png',
              ),
              fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.1,
              width: width * 0.5,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  filled: true,
                  fillColor: HexColor('#EBEBEB'),
                  hintText: "Email address",
                  hintStyle: const TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
              width: width * 0.5,
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                      icon:
                          Icon(_isObscure ? Icons.lock : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                  filled: true,
                  fillColor: HexColor('#EBEBEB'),
                  hintText: "Password",
                  hintStyle: const TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Colors.red,
                  value: value,
                  onChanged: (newValue) {
                    setState(() {
                      if (value == true) {
                        value = false;
                      } else {
                        value = true;
                      }
                    });
                  },
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );
              },
              child: Container(
                height: height * 0.06,
                width: width * 0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'Assets/images/redbutton.png',
                      ),
                      fit: BoxFit.fill),
                ),
                child: const Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget DeskstopView(height, width) {
    return Container(
        height: height * 0.4,
        width: width * 0.25,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'Assets/images/formback.png',
              ),
              fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.1,
              width: width * 0.2,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  filled: true,
                  fillColor: HexColor('#EBEBEB'),
                  hintText: "Email address",
                  hintStyle: const TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
              width: width * 0.2,
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  prefixIcon: IconButton(
                      icon:
                          Icon(_isObscure ? Icons.lock : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                  filled: true,
                  fillColor: HexColor('#EBEBEB'),
                  hintText: "Password",
                  hintStyle: const TextStyle(
                      color: Colors.black38, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Colors.red,
                  value: value,
                  onChanged: (newValue) {
                    setState(() {
                      if (value == true) {
                        value = false;
                      } else {
                        value = true;
                      }
                    });
                  },
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  width: 55,
                ),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );
              },
              child: Container(
                height: height * 0.07,
                width: width * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'Assets/images/redbutton.png',
                      ),
                      fit: BoxFit.fill),
                ),
                child: const Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
