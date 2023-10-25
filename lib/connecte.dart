import 'package:flutter/material.dart';
import 'connected.dart';
import 'privacyPolitique.dart';
import 'welcome.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    WelcomePage(),
    LoginPage(),
    PrivacyPolicyPage(),
  ];

  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => WelcomePage(),
      ));
    } else if (index == 2) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => PrivacyPolicyPage(),
      ));
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('ZAMSE WEFO', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Numéro de téléphone'),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Mot de passe'),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ConnectedPage(),
                ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 7, 139, 77),
                foregroundColor: Colors.white,
                minimumSize: Size(200, 60),
                padding: EdgeInsets.all(16),
              ),
              child: Text('Se connecter', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                // Naviguer vers la page de réinitialisation du mot de passe
              },
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Text(
                    'Mot de passe oublié ?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "L'apprentissage automatique à votre portée!!!",
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
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
            label: 'Nos auto-écoles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.policy),
            label: 'Politique de confidentialité',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
