import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superdot/app_controller.dart';

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<AppController>();
    return GetBuilder<AppController>(
      builder: (vm) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.only(top: Get.height * 0.05),
                height: Get.height * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      child: InkWell(
                        onTap: () {
                          vm.showAlertDialog(context);
                        },
                        child: const Icon(Icons.timer),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "High Score: ${vm.highScore}",
                          style: const TextStyle(
                            fontSize: 30,
                            fontFamily: 'cute',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Your Score",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                        ),
                        Text(
                          vm.score.toString(),
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'cute',
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      child: Icon(Icons.list_alt_rounded),
                    ),
                  ],
                ),
              ),
              Container(
                  color: Colors.white,
                  width: Get.width,
                  height: Get.height * 0.75,
                  child: Stack(
                    children: [
                      Positioned(
                        top: vm.y,
                        left: vm.x,
                        child: InkWell(
                          onTap: () {
                            vm.changePosition();
                          },
                          child: const SizedBox(
                            width: 60,
                            height: 60,
                            child: Icon(
                              Icons.circle,
                              color: Colors.black,
                              size: 60,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        );
      },
    );
  }
}
