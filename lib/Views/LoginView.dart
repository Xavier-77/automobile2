import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../Controllers/LoginController.dart';


class LoginView extends GetView<LoginController>{
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center( child: Obx(()
      {
        return controller.isLoading.value
            ? CircularProgressIndicator() : Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.indigo[900]!,
                  Colors.indigo[800]!,
                  Colors.indigo[900]!,
                ]
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/voiture.png',
                      width: 250,
                      height: 100,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 20,),
                            Container(
                              padding: const EdgeInsets.all(30),
                              // Vous pouvez ajuster le padding selon vos préférences
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 20),
                                  const Column(
                                    children: <Widget>[
                                      Text(
                                        "Connexion",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Form(

                                    child:
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              border: Border(bottom: BorderSide(
                                                  color: Colors.grey))
                                          ),
                                          child: TextFormField(
                                            controller: null,
                                            validator: (value) {

                                            },
                                            onSaved: (value) {
                                            },
                                            decoration: const InputDecoration(
                                                hintText: "nom d'utilisateur",
                                                hintStyle: TextStyle(fontSize: 14,
                                                    color: Colors.grey),
                                                border: InputBorder.none
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              border: Border(bottom: BorderSide(
                                                  color: Colors.grey))
                                          ),
                                          child: TextFormField(
                                            obscureText: true,
                                            controller: null,
                                            validator: (value) {

                                            },
                                            onSaved: (value) {},
                                            decoration: const InputDecoration(
                                                hintText: "mot de passe",
                                                hintStyle: TextStyle(fontSize: 14,
                                                    color: Colors.grey),
                                                border: InputBorder.none
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 40),
                                        const Text("Mot de passe oublié ?",
                                            style: TextStyle(color: Colors.grey)),
                                        const SizedBox(height: 40),
                                        SizedBox(
                                          width: 150,
                                          height: 50,
                                          child: FloatingActionButton(
                                            onPressed: () =>
                                            {
                                                Get.toNamed('/welcome')
                                            },
                                            backgroundColor: Colors.indigo[900],
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius
                                                    .circular(80)
                                            ),
                                            child: const Text('Connexion',
                                              style: TextStyle(fontSize: 20,
                                                  fontWeight: FontWeight.bold),),
                                          ),
                                        ),
                                        const SizedBox(height: 40),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: <Widget>[
                                            const Text(
                                              'Vous n\'avez pas de compte? ',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Get.toNamed('/register');
                                              },
                                              child: const Text(
                                                'S\'inscrire',
                                                style: TextStyle(fontSize: 16,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
      ),
      ),
    );
  }
}

