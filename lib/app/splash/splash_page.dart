import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria',arguments: 'Categoria x');
                Modular.to.pushNamed(
                  'categoria',
                  arguments: 'Categoria Seleciona @@',
                );
              },
              child: const Text('Categoria Module'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/produto',
                );
              },
              child: const Text('Produto Module'),
            ),
          ],
        ),
      ),
    );
  }
}
