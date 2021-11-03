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
                // argumentos: recupera pelo Modular.dargs.data
                Modular.to.pushNamed('/categoria',
                    arguments: 'Categoria Seleciona @@');
              },
              child: const Text('Categoria Module'),
            ),

            TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/categoria',arguments: 'Categoria x');
                // argumentos: recupera pelo Modular.dargs.data
                Modular.to.pushNamed(
                  'categoria/produto/Gui/xyz',
                );
              },
              child: const Text('Produto dentro de categoria'),
            ),
            // NamedParameters: Recupera pelo Modular.args.params
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/produto/Gui2/xyz',
                );
              },
              child: const Text('Produto Module'),
            ),
            // QueryParameters: recupera pelo Modular.args.queryParams
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/produto/xyz?nome=Produto_XG',
                );
              },
              child: const Text('Produto Query Param Module'),
            ),
          ],
        ),
      ),
    );
  }
}
