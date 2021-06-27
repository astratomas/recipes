import 'package:flutter/material.dart';
import 'package:resipes/recipe.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      home: MyHomePage(title: getTitle(1)),
    );
  }

  String getTitle(int mode) {
    if (mode == 1) {
      return 'Title';
    } else {
      return 'Title 2';
    }
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _recipes = Recipe.samples;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: _recipes.length,
          itemBuilder: (BuildContext context, int index) {
            return Text('$index - ${_recipes[index].label}');
          },
        ),
      ),
    );
  }
}
