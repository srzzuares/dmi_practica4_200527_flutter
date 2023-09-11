// Creado por Crystian Enrique Suarez Cuevas <200527>
// 2017-03-18
// Asignatura: Desarrollo Movil Integral
// Grado: 10° Grupo: A
// Profesor MTI. Marco Antorio Ramirez Hernandez
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
      debugShowCheckedModeBanner: false,
      title: '-----------',
      color: const Color.fromARGB(255, 26, 211, 103),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 79, 231, 142)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '200527 - CsSuar'),
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
  /* int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  } */
  void _alert() {
    setState(() {
      AlertDialog alertDialog = AlertDialog(
        backgroundColor: const Color.fromRGBO(95, 224, 97, 0.914),
        title: const Text("No me toquessss!!!!"),
        titleTextStyle: const TextStyle(
            fontFamily: 'BlwBoldItalic',
            fontSize: 36,
            color: Color.fromARGB(255, 12, 109, 229)),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Que me corrooo",
              style: TextStyle(
                fontFamily: 'blwItalic',
                fontSize: 44,
                color: Color.fromARGB(255, 12, 109, 229),
              ),
            ),
            /* Image.asset(
              "assets/images/yame2.jpeg",
              width: 200,
              height: 200,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ) */
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/yame2.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        },
      );
      print("click");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 81, 233, 162),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Holaaaa Presiosooo!!!',
              style: TextStyle(fontFamily: "BlwBoldItalic", fontSize: 28),
            ),
            Image.asset("assets/images/yame1.jpeg")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _alert();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.beach_access),
      ),
    );
  }
}
