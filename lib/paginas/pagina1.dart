import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("inicio muela 6j", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 207, 125, 2),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 207, 125, 2),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [BoxShadow(color: Color.fromARGB(31, 255, 56, 56), blurRadius: 10)],
              ),
              child: const Center(
                child: Text("Contenedor Blanco", 
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF333333)),
              onPressed: () => Navigator.pushNamed(context, '/segunda'),
              child: const Text("Seleccionar Página 2", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}