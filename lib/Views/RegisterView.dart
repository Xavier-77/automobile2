import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/RegisterControllers.dart';

class RegisterView extends GetView<RegisterController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors:[
                Colors.red,
                Colors.red,
                Colors.red,
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
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
                ),
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 5,),
                          const Text(
                            "Inscription",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,  // Style de la police
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Form(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey))
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Nom d'utilisateur",
                                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                    validator: (value){
                                      return null;
                                    },
                                    onSaved: (value){

                                    },
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey))
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "numéro de téléphone",
                                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                    validator: (value){
                                      return null;
                                    },
                                    onSaved: (value){

                                    },
                                  ),
                                ),


                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey))
                                  ),
                                  child:  TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "mot de passe",
                                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                    validator: (value){
                                      return null;
                                    },
                                    onSaved: (value){

                                    },
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      border: Border(bottom: BorderSide(color: Colors.grey))
                                  ),
                                  child:TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "email",
                                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                                      border: InputBorder.none,
                                    ),
                                    validator: (value){
                                      return null;
                                    },
                                    onSaved: (value){

                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40,),
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: FloatingActionButton(
                              onPressed: (){
                              Get.toNamed('/login');
                              },
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80)
                              ),
                              child: const Text("S'inscrire",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                'Vous avez un compte? ',
                                style: TextStyle(fontSize: 16),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed('/login');
                                },
                                child: const Text(
                                  'Se connecter',
                                  style: TextStyle(fontSize: 16, color: Colors.blue),
                                ),
                              ),
                            ],
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
      ),
    );
  }

}