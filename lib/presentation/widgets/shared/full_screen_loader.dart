import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadingMessages() {
    final messages = [
      'Cargando películas....',
      'Comprando palomitas....',
      'Cargando populares...',
      'Preparando una Maruchan...',
      'Ya mero....',
      'Esto está tomando más tiempo de lo esperado...',
    ];

    return Stream.periodic(const Duration(milliseconds: 1200), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Espera un momento...'),
          SizedBox(height: 20),
          CircularProgressIndicator(),
          SizedBox(height: 20),
          StreamBuilder(
            stream: getLoadingMessages(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Text('Cargando....');
              }
              return Text(snapshot.data!);
            },
          ),
        ],
      ),
    );
  }
}
