import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';
// import 'package:flutter_modular/flutter_modular.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;
  const CategoriaPage({Key? key, this.categoria})
      :
        // uma forma de fazer
        // categoria = Modular.args.data,
        super(key: key);

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState
    extends ModularState<CategoriaPage, CategoriaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(widget.categoria ?? 'Nao tem categoria'),
            TextButton(
              onPressed: () {
                // var controller = Modular.get<CategoriaController>();
                print(controller.hashCode);
              },
              child: const Text('Get Controller'),
            )
          ],
        ),
      ),
    );
  }
}
