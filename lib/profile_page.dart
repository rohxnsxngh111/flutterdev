import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 20,
      ),
      AnimatedContainer(
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
                'Profile',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const CircleAvatar(
        radius: 96, // Image radius
        backgroundImage: AssetImage('images/developerAvatar.png'),
      ),
      const SizedBox(
        height: 20,
      ),
      AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 48,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Column(
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Full Name: Rohan Singh',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 48,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Column(
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email: rohan.singh.do@gmail.com',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 48,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Column(
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Phone: 486-245-1993',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
