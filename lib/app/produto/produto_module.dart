import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/produto/produto_page.dart';

class ProdutoModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    // ChildRoute('/:nome', child: (context, args) => ProdutoPage()),
    ChildRoute(
      '/:nome',
      child: (context, args) => ProdutoPage(
        nome: args.params['nome'],
      ),
    ),
  ];
}
