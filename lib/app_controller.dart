import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:superdot/over.dart';
import 'package:async/async.dart';

class AppController extends GetxController {
  int score = 0;
  double x = Get.width / 2;
  double y = Get.height * 0.8 / 2;
  bool started = false;
  int? highScore = 22;
  int incomingTime = DateTime.now().millisecondsSinceEpoch;
  int currentLastScore = 0;
  RestartableTimer? timer;
  final box = GetStorage();

  @override
  void onInit() {
    highScore = box.read("highScore") ?? 0;
    super.onInit();
  }

  AlertDialog rules = AlertDialog(
    title: const Text("Rules"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text("1. Click on the dots to increase your score."),
        Text("2. Click as fast as you can to get higher score."),
      ],
    ),
  );

  incrementScore() {
    score += 10;
    update();
  }

  geneRateRandomNumber(axis) {
    return Random().nextInt(axis - 120) + 60;
  }

  updateScore(difference) async {
    if (difference < 800) timer!.reset();
    if (difference <= 10) {
      score += 100;
    } else if (difference > 10 && difference <= 50) {
      score += 50;
    } else if (difference > 100 && difference <= 200) {
      score += 25;
    } else if (difference > 200 && difference <= 500) {
      score += 10;
    } else if (difference > 500 && difference <= 800) {
      score += 5;
    } else if (difference > 800 && difference < 1000 && started) {
      score -= 50;
    } else if (started) {
      await box.write("highScore", highScore);
      currentLastScore = score;
      score = 0;
      started = false;
      timer!.cancel();
      Get.offAll(const Over(), transition: Transition.zoom);
    }
    if (score < 0) score = 0;
  }

  changePosition() async {
    var outgoingTime = DateTime.now().millisecondsSinceEpoch;
    var difference = outgoingTime - incomingTime;
    incomingTime = outgoingTime;
    if (!started) {
      timer = RestartableTimer(const Duration(milliseconds: 1000), () async {
        await box.write("highScore", highScore);
        currentLastScore = score;
        score = 0;
        started = false;
        Get.offAll(const Over(), transition: Transition.zoom);
        timer!.cancel();
      });
    }
    updateScore(difference);
    started = true;
    if (highScore != null && score > highScore!) {
      highScore = score;
    }

    x = geneRateRandomNumber(Get.width.round()).toDouble();
    y = geneRateRandomNumber((Get.height * 0.75).round()).toDouble();
    update();
  }

  showAlertDialog(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return rules;
      },
    );
  }
}
