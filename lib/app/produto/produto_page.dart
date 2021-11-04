import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';

class ProdutoPage extends StatelessWidget {
  String? nome;
  ProdutoPage({Key? key, this.nome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: Column(
        children: [
          // Text(Modular.args.params['nome'] ?? 'Nome nao enviado'),
          Text(nome ?? 'Nome nao envidado'),
          TextButton(
            onPressed: () {
              var preco = Modular.get<PrecoModel>();
              print(preco.hashCode);
            },
            child: const Text('Get Preco'),
          ),
        ],
      ),
    );
  }
}
