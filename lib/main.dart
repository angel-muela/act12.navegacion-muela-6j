import 'package:flutter/material.dart';
// Importamos apuntando a la subcarpeta
import 'paginas/pagina1.dart';
import 'paginas/pagina2.dart';
import 'paginas/pagina3.dart';

void main() {
  runApp(const MiAppMuela());
}

class MiAppMuela extends StatelessWidget {
  const MiAppMuela({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación Muela',
      initialRoute: '/',
      routes: {
        '/': (context) => Pagina1(),
        '/segunda': (context) => Pagina2(),
        '/tercera': (context) => Pagina3(),
      },
    );
  }
}