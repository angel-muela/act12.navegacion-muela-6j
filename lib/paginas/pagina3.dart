import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Mismo fondo gris neutro para consistencia
      backgroundColor: const Color(0xFFF2F2F2), 
      appBar: AppBar(
        title: const Text("pagina 3 el muela", style: TextStyle(color: Colors.white)),
        // Aplicamos el naranja característico de la marca
        backgroundColor: const Color.fromARGB(255, 207, 125, 2),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Un icono naranja para darle vida a la última página
            const Icon(
              Icons.check_circle_outline,
              size: 100,
              color: Color.fromARGB(255, 207, 125, 2),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // Botón en gris oscuro profesional
                backgroundColor: const Color(0xFF333333),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
              child: const Text(
                "Volver al Inicio", 
                style: TextStyle(color: Colors.white, fontSize: 16)
              ),
            ),
          ],
        ),
      ),
    );
  }
}