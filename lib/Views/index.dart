import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/IndexController.dart';

class IndexView extends GetView<IndexController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Page d\'accueil'),
      ),
      body:
      Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/login');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text('Se connecter'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/register');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text('S\'inscrire'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
