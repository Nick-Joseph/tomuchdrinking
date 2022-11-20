import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  String warningStatus = 'None down';
  List imgList = [
    ('assets/images/drinking1.webp'),
    ('assets/images/drinking2.webp'),
    ('assets/images/drinking4.jpg'),
  ];
  String imgNumber = '';
  // getImages() {
  //   for (var i = 0; i < imgList.length; i++) {
  //     String imgs = imgList[i];
  //   }
  // }

  static const String aCoupleDown = 'Pace yourself we chillin';
  static const String afeweDown =
      'Feeling really good but\n should probaly stop';
  static const String tooMucheDown = 'Lets stop and find a way home';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    if (_counter == 1) {
      warningStatus = aCoupleDown;
      imgList[0] = imgNumber;
    }
    if (_counter == 4) {
      warningStatus = afeweDown;
      imgList[1] = imgNumber;
    }
    if (_counter == 6) {
      warningStatus = tooMucheDown;
      imgList[2] = imgNumber;
    } else {}
  }

  void _clearCounter() {
    setState(() {
      _counter = 0;
      warningStatus = 'None down';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(warningStatus),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(imgNumber),
            ),
            const Text(
              'How many drinks have you had?',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Add another drink'),
            ),
            ElevatedButton(
              onPressed: _clearCounter,
              child: Icon(Icons.refresh),
            ),
            const Divider(
              indent: 50,
              endIndent: 50,
              thickness: 2,
            )
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
