import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterdev/home_page.dart';
import 'package:flutterdev/glass_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/backgroundBubble.gif'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('Welcome'),
            shadowColor: Colors.black,
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent,
          ),
          body: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                child: Stack(children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 7,
                      sigmaY: 7,
                    ),
                    child: Container(
                      height: 220,
                      width: 360,
                    ),
                  ),
                  Container(
                    height: 580,
                    width: 380,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                          )
                        ],
                        border: Border.all(
                            color: Colors.white.withOpacity(0.2), width: 1.0),
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.5),
                            Colors.white.withOpacity(0.2)
                          ],
                          stops: const [0.0, 1.0],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          pages[currentPage],
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              "FLUTTER DEVS",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.6),
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
