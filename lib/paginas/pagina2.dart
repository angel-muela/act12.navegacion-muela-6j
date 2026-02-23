import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mismo fondo gris claro que la Pagina1
      backgroundColor: const Color(0xFFF2F2F2), 
      appBar: AppBar(
        title: const Text("segunda pagina 6 j", style: TextStyle(color: Colors.white)),
        // Mismo naranja que la Pagina1
        backgroundColor: const Color.fromARGB(255, 207, 125, 2),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // El GIF dentro de un contenedor con sombra ligera para que resalte
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://raw.githubusercontent.com/angel-muela/elo/main/%C3%A9nerv%C3%A9-stress.gif',
                  width: 300,
                  height: 300,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => const Text("Error al cargar GIF"),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // Gris oscuro para mantener la estética profesional
                backgroundColor: const Color(0xFF333333),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () => Navigator.pushNamed(context, '/tercera'),
              child: const Text(
                "Avanzar a Página 3", 
                style: TextStyle(color: Colors.white)
              ),
            ),
          ],
        ),
      ),
    );
  }
}