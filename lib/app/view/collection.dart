import 'package:flutter/material.dart';
import 'package:mi_tarea03_flutter/app/view/splash.dart';

class GaleriaPage extends StatelessWidget {
  // Nombres de las imágenes
  final List<String> imageNames = [
    'acdc',
    'arena',
    'dark',
    'new_y',
    'rock',
    'acdc',
    'arena',
    'dark',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildImageGrid(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          // Regreso a la ventana principal
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => SplashPage(),
            ),
          );
        },
      ),
      title: Text('Galería'),
    );
  }

  Widget buildImageGrid() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: imageNames.length,
      itemBuilder: (context, index) {
        return buildImageCard(index);
      },
    );
  }

Widget buildImageCard(int index) {
  return Card(
    child: Column(
      children: [
        Image.asset(
          'assets/images/${imageNames[index]}.png',
          width: 120,
          height: 120,
        ),
        SizedBox(height: 8), // Espacio entre las dos imágenes
        Image.asset(
          'assets/images/playerC.png', // Ruta de la otra imagen
          width: 120,
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(imageNames[index]),
          ),
        ],
      ),
    );
  }
}
