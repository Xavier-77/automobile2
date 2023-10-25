import 'package:flutter/material.dart';
import 'privacyPolitique.dart';
import 'login_page.dart';
import 'welcome.dart';
import 'signup_page.dart';

// ...

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Indice de l'élément sélectionné dans la barre de navigation

  // Les pages correspondantes aux éléments de la barre de navigation
  final List<Widget> _pages = [
    MyHomePage(), // Vous pouvez remplacer MyHomePage par la page que vous souhaitez afficher
    LoginPage(),
    PrivacyPolicyPage(),
  ];

  void _onItemTapped(int index) {
    if (index == 0) {
      // L'utilisateur a cliqué sur "Politique de confidentialité"
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => WelcomePage(),
      ));
    } else if (index == 2) {
      // L'utilisateur a cliqué sur "Accueil"
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>  PrivacyPolicyPage(),
      ));
    }else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ZAMSE WEFO', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image.jpg'), // Chemin vers l'image dans les actifs
                fit: BoxFit.cover, // Ajuste l'image pour couvrir toute la page
              ),
            ),
            // Autres widgets à l'intérieur du Container
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Titre en haut de la page
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'BIENVENUE ! ! !',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Couleur du texte en blanc
                    ),
                  ),
                ),
                SizedBox(height: 180),
                // Boutons verticaux au milieu
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Gérer l'action de connexion ici
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Fond vert
                        foregroundColor: Colors.white, // Texte blanc
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        padding: EdgeInsets.all(16), // Espacement interne du bouton
                      ),
                      child: Text('Connexion',
                        style: TextStyle(fontSize: 20), // Taille du texte
                      ),
                    ),
                    SizedBox(height: 60), // Espacement entre les boutons
                    ElevatedButton(
                      onPressed: () {
                        // Gérer l'action d'inscription ici
                        // Naviguer vers la page d'inscription lorsque le bouton "Inscription" est appuyé
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Fond bleu
                        foregroundColor: Colors.white, // Texte blanc
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        padding: EdgeInsets.all(16), // Espacement interne du bouton
                      ),
                      child: Text('Inscription', style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
                SizedBox(height: 140),
                // Texte en bas de la page
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "L'apprentissage automatique à votre porté!!!",
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.white, // Couleur du texte en blanc
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: 30),
        ],
        
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Nos autoecoles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.policy),
            label: 'Politique de confidentialité',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green, // Couleur de l'élément sélectionné
        onTap: _onItemTapped,
      ),
    );
  }
}


