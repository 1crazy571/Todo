import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const RiveAnimation.asset("RiveAssets/background.riv"),
          Positioned.fill(
            child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 44,
                  sigmaY: 44,
                ),
                child: const SizedBox()),
          ),
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 32, right: 32, top: 50),
              child: SizedBox(
                width: 280,
                child: Column(
                  children: [
                    Text(
                      "Schedule To Do & Do it ☑️",
                      style: TextStyle(
                          fontSize: 60,
                          fontFamily: "Poppins",
                          height: 1.2,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Keep your todo's organized & clean.     Never miss any of them.",
                      style:
                          TextStyle(height: 1.4, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 32,
            left: 32,
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.transparent)),
              onPressed: () {},
              child: const Text("Next Page  ➡️",style: TextStyle(color: Colors.white,fontSize: 17)),
            ),
          ),
        ],
      ),
    );
  }
}
