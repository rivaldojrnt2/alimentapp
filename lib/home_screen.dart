import 'package:flutter/material.dart';
import 'package:flutter_app/dadoscomplementares_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String _title = 'Painel de Controle';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 106.0,
      children: <Widget>[
        Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue,
            ),
            title: Text('Dados Complementares'),
            subtitle: Text(
                'Gerencie seus dados complementares'
            ),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
            onTap: () => _navigateToDadosComplementaresScreen(context),
          ),
        ),

        Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.yellow,
            ),
            title: Text('Conteúdo'),
            subtitle: Text(
                'Acesse o conteúdo e inicie sua jornada de aprendizado'
            ),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
            onTap: () {
              const snackBar = SnackBar(
                content: Text('Em construção'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),

        Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.deepOrange,
            ),
            title: Text('Conquistas'),
            subtitle: Text(
                'Verifique suas conquistas de aprendizado'
            ),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
            onTap: () {
              const snackBar = SnackBar(
                content: Text('Em construção'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),

        Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.tealAccent,
            ),
            title: Text('Favoritos'),
            subtitle: Text(
                'Gerencie seus conteúdos favoritos'
            ),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
            onTap: () {
              const snackBar = SnackBar(
                content: Text('Em construção'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),

        Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue,
            ),
            title: Text('Agenda'),
            subtitle: Text(
                'Configure sua agenda de eventos'
            ),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
            onTap: () {
              const snackBar = SnackBar(
                content: Text('Em construção'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),

        Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.yellow,
            ),
            title: Text('Calculadora IMC'),
            subtitle: Text(
                'Utilize a calculadora e controle e mantenha seu histórico'
            ),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
            onTap: () {
              const snackBar = SnackBar(
                content: Text('Em construção'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),

        Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.deepOrange,
            ),
            title: Text('Configurações'),
            subtitle: Text(
                'Gerencie suas configurações aqui'
            ),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
            onTap: () {
              const snackBar = SnackBar(
                content: Text('Em construção'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),

        Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.tealAccent,
            ),
            title: Text('Reportar um Problema'),
            subtitle: Text(
                'Encontrou um problema? Entre em contato conosco'
            ),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
            onTap: () {
              const snackBar = SnackBar(
                content: Text('Em construção'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ),
      ],
    );
  }
}

void _navigateToDadosComplementaresScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => DadosComplementaresScreen()));
}