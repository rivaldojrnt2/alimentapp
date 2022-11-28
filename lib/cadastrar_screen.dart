import 'package:flutter/material.dart';
import 'package:flutter_app/home_screen.dart';
import 'package:flutter_app/login_screen.dart';

class CadastrarScreen extends StatelessWidget {
  static const String _title = 'Cadastrando novo usuário';

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
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nomeController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    userController.text = "";
    emailController.text = "";
    nomeController.text = "";
    passwordController.text = "";
    passwordConfirmController.text = "";

    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'AlimentApp',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Preencha os campos de cadastro',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome completo',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: userController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Usuário',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordConfirmController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirme a senha',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  child: const Text('Confirmar cadastro'),
                  onPressed: () {
                    var isValid = true;
                    if (nomeController.text == null || nomeController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (emailController.text == null || emailController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (userController.text == null || userController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (passwordController.text == null || passwordController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (passwordConfirmController.text == null || passwordConfirmController.text.isEmpty)
                    {
                      isValid = false;
                    }

                    if (isValid && passwordController.text != passwordConfirmController.text)
                    {
                      const snackBar = SnackBar(
                        content: Text('Senhas não conferem'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      isValid = false;
                    }

                    if (isValid)
                    {
                      const snackBar = SnackBar(
                        content: Text('Cadastro realizado com sucesso'),
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
        .push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  void _navigateToHomeScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}