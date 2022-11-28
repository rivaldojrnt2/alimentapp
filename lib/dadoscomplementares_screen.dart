import 'package:flutter/material.dart';
import 'package:flutter_app/home_screen.dart';

class DadosComplementaresScreen extends StatelessWidget {
  static const String _title = 'Editar Dados Complementares';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController telefoneController = TextEditingController();
  TextEditingController cepController = TextEditingController();
  TextEditingController cidadeEstadoController = TextEditingController();
  TextEditingController bairroController = TextEditingController();
  TextEditingController enderecoController = TextEditingController();
  TextEditingController complementoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    telefoneController.text = "";
    cepController.text = "";
    cidadeEstadoController.text = "";
    bairroController.text = "";
    enderecoController.text = "";
    complementoController.text = "";

    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Dados Complementares',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Preencha os campos abaixo',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: enderecoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Endereço',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: bairroController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Bairro',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: cidadeEstadoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Cidade/Estado',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: cepController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CEP',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: complementoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Complemento',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: telefoneController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Telefone',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('Salvar'),
                  onPressed: () {
                    var isValid = true;
                    if (enderecoController.text == null || enderecoController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (bairroController.text == null || bairroController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (cidadeEstadoController.text == null || cidadeEstadoController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (enderecoController.text == null || enderecoController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (complementoController.text == null || complementoController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (cepController.text == null || cepController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (telefoneController.text == null || telefoneController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (isValid)
                    {
                      const snackBar = SnackBar(
                        content: Text('Dados atualizados com sucesso'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      isValid = false;
                      _navigateToHomeScreen(context);
                    }
                    else
                    {
                      const snackBar = SnackBar(
                        content: Text('Preenchimento inválido'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                )),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('Voltar'),
                  onPressed: () {
                    _navigateToLoginScreen(context);
                  },
                )),
          ],
        ));
  }

  void _navigateToLoginScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  void _navigateToHomeScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}