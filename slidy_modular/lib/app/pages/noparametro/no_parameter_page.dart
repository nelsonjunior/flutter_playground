import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/pages/home/home_controller.dart';

class NoParameterPage extends StatefulWidget {
  NoParameterPage({Key key}) : super(key: key);

  @override
  _NoParameterPageState createState() => _NoParameterPageState();
}

class _NoParameterPageState extends State<NoParameterPage> {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('No Parameter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(homeController.text),
        ),
      ),
    );
  }
}
