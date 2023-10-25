import 'package:flutter/material.dart';
import 'firstExam.dart';
import 'secondExam.dart';
import 'thirdExam.dart';
import 'privacyPolitique.dart';
import 'login_page.dart';
import 'welcome.dart';
class ExamPage extends StatefulWidget {
  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
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
        title: Text(
          'Examen',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 245, 245, 248),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image.jpg'), // Chemin vers l'image dans les actifs
            fit: BoxFit.cover, // Ajuste l'image pour couvrir toute la page
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300, // Largeur du conteneur des boutons
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200, // Couleur de fond grise claire
                  borderRadius: BorderRadius.circular(20), // Bords arrondis
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                
                child: Column(
                  children: [
                     SizedBox(height: 97),
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour accéder aux panneaux
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChronoPage(),
                    ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 0, 0), // Fond rouge foncé
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Coins arrondis
                        ),
                      ),
                      child: Text(
                        "Examen 1",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                     SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour accéder aux feux tricolores
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SecondExamPage(),
                    ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 255, 191, 0), // Fond jaune foncé
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Coins arrondis
                        ),
                      ),
                      child: Text(
                        "Examen 2",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                     SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: () {
                        // Logique pour accéder aux intersections routières
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ThirdExamPage(),
                    ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey, // Fond bleu foncé
                        minimumSize: Size(200, 60), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Coins arrondis
                        ),
                      ),
                      child: Text(
                        "Examen 3 ",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
              Text(
                "Veuillez choisir un examen!!!",
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
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
    home: ExamPage(),
  ));
}
