import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView with divider',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'ListView with divider'),
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
  var listData = List.generate(100, (index) => index);

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
            Expanded(
                child: ListView.separated(
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.purple.withOpacity(index / listData.length),
                  child: Center(
                      child: Stack(
                    children: <Widget>[
                      Text('$index',
                          style: TextStyle(
                              color: Colors.black87
                                  .withOpacity((100 - index) / 100))),
                      Text(
                        '$index',
                        style: TextStyle(
                            color: Colors.white
                                .withOpacity(1 - (100 - index) / 100)),
                      )
                    ],
                  )),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                height: 20,
                thickness: 5,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
