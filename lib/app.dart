import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superdot/app_controller.dart';
import 'package:superdot/game.dart';
import 'package:superdot/game_rules.dart';

class App extends StatelessWidget {
  const App({super.key});

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
                margin: EdgeInsets.only(bottom: Get.height * 0.05),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Super Dot",
                  style: TextStyle(
                    fontFamily: 'londrina',
                    fontSize: 80,
                  ),
                ),
              ),
              const Text(
                "High Score",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'cute',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1,
                ),
              ),
              vm.highScore == null
                  ? const CircularProgressIndicator()
                  : Text(
                      vm.highScore.toString(),
                      style: const TextStyle(
                        fontSize: 40,
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
                    "Start Game",
                    style: TextStyle(
                      fontFamily: 'cute',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  Get.to(
                    const GameRules(),
                    transition: Transition.downToUp,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      child: Icon(Icons.list_alt_rounded),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Rules",
                      style: TextStyle(
                        fontFamily: 'cute',
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
