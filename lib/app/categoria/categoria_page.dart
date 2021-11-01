import 'package:flutter/material.dart';
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

class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
        child: Text(widget.categoria ?? 'Nao tem categoria'),
      ),
    );
  }
}
