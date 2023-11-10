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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 18),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.white, width: number.toDouble()),
                  gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.cyanAccent]),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "$number",
                  style: TextStyle(decorationColor: Colors.grey, fontSize: 50),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                  },
                  child: Text("tambah")),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (number > 0) {
                      setState(() {
                        number--;
                      });
                    }
                  },
                  child: Text("kurang"))
            ],
          )
        ],
      ),
    );
  }
}
