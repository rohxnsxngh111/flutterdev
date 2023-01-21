import 'package:flutter/material.dart';
import 'package:flutterdev/meditate_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: ElevatedButton(
    //       onPressed: () {
    //         Navigator.of(context).push(
    //           MaterialPageRoute(builder: (BuildContext context) {
    //             return const MeditatePage();
    //           }),
    //         );
    //       },
    //       child: Column(
    //         children: const [
    //           Text('Get Started'),
    //         ],
    //       )),
    // );
    return ElevatedButton(
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
          gradient:
              const LinearGradient(colors: [Colors.red, Colors.purpleAccent]),
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 16,
              offset: const Offset(-8, 0),
            ),
            BoxShadow(
              color: Colors.purpleAccent.withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 16,
              offset: const Offset(8, 0),
            ),
            BoxShadow(
              color: Colors.red.withOpacity(0.2),
              spreadRadius: 16,
              blurRadius: 32,
              offset: const Offset(-8, 0),
            ),
            BoxShadow(
              color: Colors.purpleAccent.withOpacity(0.2),
              spreadRadius: 16,
              blurRadius: 32,
              offset: const Offset(8, 0),
            )
          ],
        ),
        child: const Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
