import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field Styled',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Text Field Styled'),
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
                alignLabelWithHint: true,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                labelText: 'Search',
                labelStyle: TextStyle(color: Colors.purple),
                hintText: 'Введите занчение',
                helperText: 'Поле для поиска заметок',
                suffixIcon: Icon(Icons.search),
                suffixIconColor: Colors.purple),
          ),
        ),
      ),
    );
  }
}
