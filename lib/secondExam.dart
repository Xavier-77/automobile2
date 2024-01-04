import 'package:flutter/material.dart';
import 'dart:async';
import 'courses.dart';
import 'exam.dart';
import 'privacyPolitique.dart';
import 'login_page.dart';
import 'welcome.dart';

class SecondExamPage extends StatefulWidget {
  @override
  State<SecondExamPage> createState() => _SecondExamPageState();
}

class _SecondExamPageState extends State<SecondExamPage> {
  int _selectedIndex = 0; // Indice de l'élément sélectionné dans la barre de navigation

  // Les pages correspondantes aux éléments de la barre de navigation
  final List<Widget> _pages = [
    WelcomePage(), // Vous pouvez remplacer MyHomePage par la page que vous souhaitez afficher
    ApprentissagePage(),
    ExamPage(),
  ];

  void _onItemTapped(int index) {
    if (index == 0) {
      // L'utilisateur a cliqué sur "Examens"
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => WelcomePage(),
      ));
    }
    else if (index == 1){
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ApprentissagePage(),
      ));
    }
    else if (index == 2) {
      // L'utilisateur a cliqué sur "Accueil"
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>  ExamPage(),
      ));}else {
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
          'Examen 1',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Chronomètre en haut de la page
          // Chronomètre en haut de la page
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    // Logique pour aller à la page suivante
                  },
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CountdownTimer(), // Utilisez un widget de chronomètre personnalisé
              ),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    // Logique pour aller à la page suivante
                  },
                ),
              ),
            ],
          ),
          // Carré vide au centre
          Center(
            child: Container(
              width: 330,
              height: 300,
              color: Colors.grey.withOpacity(0.2),
              // Vous pouvez personnaliser le contenu du carré ici
            ),
          ),
          SizedBox(height: 50),
          // Boutons A, B, C, D en bas de la page
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Logique pour le bouton A
                },
                style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 182, 178, 199),
                        minimumSize: Size(150, 100), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Coins arrondis
                        ),
                      ),
                child: Text('A'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Logique pour le bouton B
                },
                style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 182, 178, 199),
                        minimumSize: Size(150, 100), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Coins arrondis
                        ),
                      ),
                child: Text('B'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Logique pour le bouton C
                },
                style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 182, 178, 199),
                        minimumSize: Size(150, 100), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Coins arrondis
                        ),
                      ),
                child: Text('C'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Logique pour le bouton D
                },
                style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 182, 178, 199),
                        minimumSize: Size(150, 100), // Largeur et hauteur personnalisées
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Coins arrondis
                        ),
                      ),
                child: Text('D'),
              ),
            ],
          ),
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
            label: 'Apprentissage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.policy),
            label: 'Examens',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green, // Couleur de l'élément sélectionné
        onTap: _onItemTapped,
      ),
    );
  }
}

// Widget de chronomètre personnalisé
class CountdownTimer extends StatefulWidget {
  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  int _secondsRemaining = 25;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        timer.cancel(); // Arrêtez le chronomètre lorsque le temps est écoulé
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Temps restant: $_secondsRemaining s',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SecondExamPage(),
  ));
}
