import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameRules extends StatelessWidget {
  const GameRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                child: Center(
                  child: Text(
                    "Rule Book",
                    style: TextStyle(
                      fontFamily: 'cute',
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, right: 20, left: 20, bottom: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Rule 1',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'cute',
                        letterSpacing: 0.1,
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        'Your task is to tap on the dot on the screen as fast as you can.',
                        style: TextStyle(
                          fontSize: 20,
                          // fontFamily: 'cute',
                          letterSpacing: 0.01,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Rule 2',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'cute',
                        letterSpacing: 0.1,
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        'You have to tap on dot with in one second otherwise you will lose the game.',
                        style: TextStyle(
                          fontSize: 20,
                          // fontFamily: 'cute',
                          letterSpacing: 0.01,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Rule 3',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'cute',
                        letterSpacing: 0.1,
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text(
                        'Lesser the time to tap on dot more will be your score. if time is just about to end and you clicked you will loose some points but not over the game',
                        style: TextStyle(
                          fontSize: 20,
                          // fontFamily: 'cute',
                          letterSpacing: 0.01,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
