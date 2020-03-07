import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/pages/home/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.note_add),
            onPressed: () {
              Modular.to.pushNamed('/noparameter');
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: TextField(
            decoration: InputDecoration(labelText: 'Um Texto Qualquer'),
            onChanged: (value) {
              homeController.text = value;
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () {
//          Navigator.pushNamed(context, '/other/${homeController.text}');
          Modular.to.pushNamed('/other/${homeController.text}');
        },
      ),
    );
  }
}
