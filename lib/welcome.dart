import 'package:flutter/material.dart';
import 'privacyPolitique.dart';
import 'login_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
        title: Text('ZAMSE WEFO'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Bienvenue sur ZAMSE WEFO!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
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
                'Ici nous devons ajouter un texte de bienvenue: ZAMSE WEFO est une plateforme mobile developpe par deux ingenieurs BADO Zwamassoe et SANOGO Sy.',
                style: TextStyle(
                  fontSize: 16.0,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white, // Couleur du texte en blanc
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "L'apprentissage automatique à votre portée!!!",
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
    home: WelcomePage(),
  ));
}
