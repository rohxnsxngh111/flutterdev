import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterdev/feed_page.dart';

import 'profile_page.dart';
import 'home_page.dart';
import 'feed_page.dart';

class MeditatePage extends StatefulWidget {
  const MeditatePage({super.key});

  @override
  State<MeditatePage> createState() => _MeditatePageState();
}

class _MeditatePageState extends State<MeditatePage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    ProfilePage(),
    FeedPage(),
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
          title: const Text('Get Started'),
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(children: [
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 7,
                  sigmaY: 7,
                ),
                child: const SizedBox(
                  height: 220,
                  width: 360,
                ),
              ),
              Container(
                height: 580,
                width: 380,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 8, 26, 192),
                      )
                    ],
                    border: Border.all(
                        color: Colors.white.withOpacity(0.6), width: 1.0),
                    gradient: LinearGradient(
                      colors: [
                        Colors.red.withOpacity(0.6),
                        Colors.white.withOpacity(0.2)
                      ],
                      stops: const [0.0, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 120,
                      ),
                      SizedBox(
                        width: 320,
                        child: Text(
                          "Welcome to our meditation app, where we guide you on a journey to find inner peace and tranquility. Our app offers a variety of guided meditations to help you reduce stress, improve focus, and increase mindfulness. Whether you're new to meditation or a seasoned practitioner, our app has something for everyone. Take a few minutes out of your day to unwind, relax, and find your inner calm.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
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
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.transparent,
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: ''),
            NavigationDestination(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: ''),
            NavigationDestination(
                icon: Icon(
                  Icons.newspaper,
                  color: Colors.white,
                ),
                label: ''),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
        ),
      ),
    );
  }
}
