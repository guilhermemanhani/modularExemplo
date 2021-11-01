import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_module.dart';
import 'package:flutter_modular_example/app/produto/produto_module.dart';
import 'package:flutter_modular_example/app/splash/splash_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => const [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => SplashPage()),
        ModuleRoute('/categoria', module: CategoriaModule()),
        ModuleRoute('/produto', module: ProdutoModule()),
      ];
}

// - Modulo pode ser por Hierarquia
//    Produto
//      Estoque
//        Fornecedor
//      X
//      Y