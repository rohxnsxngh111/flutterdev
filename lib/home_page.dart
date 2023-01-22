import 'package:flutter/material.dart';
import 'package:flutterdev/landing_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ClipOval(
        child: SizedBox.fromSize(
          size: const Size.fromRadius(172), // Image radius
          child: const Image(image: AssetImage('images/softwareEngineer.jpg')),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return const MeditatePage();
            }),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 48,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: const LinearGradient(
                colors: [Colors.white, Color.fromARGB(255, 122, 209, 249)]),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.6),
                spreadRadius: 1,
                blurRadius: 16,
                offset: const Offset(-8, 0),
              ),
              BoxShadow(
                color: Colors.lightBlue.withOpacity(0.6),
                spreadRadius: 1,
                blurRadius: 16,
                offset: const Offset(8, 0),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 16,
                blurRadius: 32,
                offset: const Offset(-8, 0),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 16,
                blurRadius: 32,
                offset: const Offset(8, 0),
              )
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Get Started',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Text(
        '</>',
        style: TextStyle(
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
