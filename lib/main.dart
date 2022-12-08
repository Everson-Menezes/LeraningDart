import 'package:flutter/material.dart';
import 'Algorithm/intermediates/array.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bora de flutter então!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _results;
  var _fuction;
  void teste() {
    setState(() {
      //Creates a new instance of the object from the Class Array that are placed on the name space 'Algorithm/intermediates/array.dart';

      Array newArray = Array();
      try {
        var a = [
          "diorite",
          "andesite",
          "grass",
          "dirt",
          "pink wool",
          "dead shrub"
        ];
        var b = ["diorite", "andesite", "grass", "dirt", "dead shrub"];

        _results = newArray.diffarray(a, b);
        _fuction = "Here it's the difference between the two lists";
      } catch (e) {
        print(e);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_fuction',
              ),
              Text(
                '$_results',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: teste,
          tooltip: 'teste',
          child: const Icon(Icons.add),
          // ),
          // testeFloatingButtonActionButtonLocation: FloatingActionButton(
          //   onPressed: teste,
          //   tooltip: 'Teste',
          //   child: const Icon(Icons.add),
          // ),
        ));
  }
}
