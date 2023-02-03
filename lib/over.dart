import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superdot/app_controller.dart';
import 'package:superdot/game.dart';

class Over extends StatelessWidget {
  const Over({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<AppController>();
    return GetBuilder<AppController>(builder: (vm) {
      return Scaffold(
        // start game page only start game button on this page with font family cute
        body: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                padding: const EdgeInsets.all(10),
                color: Colors.black,
                child: const Text(
                  "SUPER DOT",
                  style: TextStyle(
                    fontFamily: 'cute',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 10,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: Get.height * 0.05),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Game Over",
                  style: TextStyle(
                    fontFamily: 'londrina',
                    fontSize: 80,
                    // color: Colors.white,
                  ),
                ),
              ),
              Text(
                "High Score: ${vm.highScore}",
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'cute',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1,
                ),
              ),
              Text(
                "Your Score: ${vm.currentLastScore}",
                style: const TextStyle(
                  fontSize: 30,
                  fontFamily: 'cute',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  vm.started = false;
                  Get.offAll(
                    const Game(),
                    transition: Transition.noTransition,
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Retry",
                    style: TextStyle(
                      fontFamily: 'cute',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
