import 'package:flutter/material.dart';
import 'connected.dart';
import 'privacyPolitique.dart';
import 'login_page.dart';
import 'welcome.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
      body: Column(
        children: [
          SizedBox(height: 50),
          Text(
            'Inscription',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          Card(
            elevation: 5, // Ajout d'une ombre
            child: Container(
              width: 300,
              height: 350,
              child: SignUpForm(),
            ),
          ),
          //Container(
            //width: 300,
            //height: 355,
            //decoration: BoxDecoration(
              //border: Border.all(color: Colors.black),
              //borderRadius: BorderRadius.circular(10),
            //),
            //child: SignUpForm(),
          //),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // Action du bouton en dehors du "carre"
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              minimumSize: Size(200, 60),
              padding: EdgeInsets.all(16),
            ),
            child: Text('S\'inscrire', style: TextStyle(fontSize: 20)),
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
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _phoneNumber = '';
  String _password = '';
  String _confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Nom d\'utilisateur'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un nom d\'utilisateur';
                }
                return null;
              },
              onSaved: (value) {
                _username = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Numéro de téléphone'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un numéro de téléphone';
                }
                return null;
              },
              onSaved: (value) {
                _phoneNumber = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mot de passe'),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un mot de passe';
                }
                return null;
              },
              onSaved: (value) {
                _password = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Confirmez le mot de passe'),
              obscureText: true,
              validator: (value) {
                if (value != _password) {
                  return 'Les mots de passe ne correspondent pas';
                }
                return null;
              },
              onSaved: (value) {
                _confirmPassword = value!;
              },
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
