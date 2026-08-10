import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recordatorio',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const PantallaChat(),
    );
  }
}

class PantallaChat extends StatelessWidget {
  const PantallaChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111111),

      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxWidth: 390,
            ),
            padding: const EdgeInsets.all(20),

            child: Column(
              children: [

                const SizedBox(height: 30),

                // Mensaje del chatbot
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 240,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Text(
                      '¿Deseas que te recuerde a las 6:00 que debes salir a las 6:30?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Respuesta del usuario
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Sí, programar recordatorio.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // Confirmación del recordatorio
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 250,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          'Recordatorio programado',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          'Te avisaremos a las 6:30 para que salgas hacia la universidad.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          'Clase: 7:30',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          'Transporte: público',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Empuja el campo de texto hacia abajo
                const Spacer(),

                // Campo para escribir y micrófono
                Row(
                  children: [

                    Expanded(
                      child: Container(
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Escribe algo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    const Icon(
                      Icons.mic,
                      color: Colors.blue,
                      size: 36,
                    ),
                  ],
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}