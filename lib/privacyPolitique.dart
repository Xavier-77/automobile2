import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'main.dart';
import 'login_page.dart';
import 'welcome.dart';
import 'signup_page.dart';

class PrivacyPolicyPage extends StatefulWidget {
  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  int _selectedIndex = 0; // Indice de l'élément sélectionné dans la barre de navigation

  // Les pages correspondantes aux éléments de la barre de navigation
  final List<Widget> _pages = [
    WelcomePage(), // Vous pouvez remplacer MyHomePage par la page que vous souhaitez afficher
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
        title: Text('ZAMSE WEFO',
        style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
      ),
      centerTitle: true,
        ),
        //centerTitle: true,
        
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Notre politique de confidentialité!',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue, // Couleur de fond du carré
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                // Ajoutez votre texte de bienvenue ici
                'Ici nous devons ajouter notre politique de configuration: ZAMSE WEFO est une plateforme mobile developpe par deux ingenieurs BADO Zwamassoe et SANOGO Sy.',
                style: TextStyle(
                  fontSize: 16.0,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white, // Couleur du texte en blanc
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Logique pour le bouton "Annuler"
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 0, 0), // Fond rouge foncé
                        minimumSize: Size(150, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Coins arrondis
                        ),
                      ),
                  child: Text('Accueil',
                  style: TextStyle(fontSize: 20),),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Logique pour le bouton "Continuer"
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Fond rouge foncé
                        minimumSize: Size(150, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Coins arrondis
                        ),
                      ),
                  child: Text('Continuer',
                  style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
            SizedBox(height: 50.0),
            Text(
              "L'apprentissage automatique à votre portée",
              style: TextStyle(
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
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

void main() {
  runApp(MaterialApp(
    home: PrivacyPolicyPage(),
  ));
}
