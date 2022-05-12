import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal List',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Horizontal List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

fakeData(int count) => List<Widget>.generate(count, (index) {
      return SizedBox(
          height: 50,
          width: 50,
          child: Card(
            borderOnForeground: true,
            color: Colors.amberAccent,
            child: Center(
              child: Text('$index'),
            ),
          ));
    });

final _listData = fakeData(100);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return constraints.constrainWidth() > 500
                      ? ListView.builder(
                          itemBuilder: ((context, index) => _listData[index]),
                          itemCount: _listData.length,
                        )
                      : ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: _listData.length,
                          itemBuilder: ((context, index) => _listData[index]),
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
