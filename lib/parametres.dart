import 'package:flutter/material.dart';

class ParametresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> options = [
      'Espaces Comptes',
      'Notifications',
      'Autorisations',
      'Thèmes',
      'Langues',
      'Mise à jour / Version de l\'app',
      'Support et Assistance',
      'Déconnexion',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Paramètres'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: options.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ElevatedButton(
              onPressed: () {
                // Action spécifique pour chaque option
                print('${options[index]} sélectionné');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: index == options.length - 1
                    ? Colors.black12 // Bouton "Déconnexion"
                    : Colors.white70, // Couleur par défaut pour les autres
                foregroundColor: Colors.black87, // Texte
                padding: EdgeInsets.symmetric(vertical: 16), // Taille du bouton
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26), // Coins arrondis
                ),
              ),
              child: Text(
                options[index],
                style: TextStyle(fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}

