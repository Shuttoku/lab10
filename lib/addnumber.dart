import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.pink
        
      ),
      home: const MyHomePage(title: 'โปรแกรมนับเลขของฉัน', style: TextStyle(color: Color.fromARGB(255, 87, 89, 214), fontSize: 24),)
      ,
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required TextStyle style}) : super(key: key);

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
  
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Center(
     
        child: Column(
     
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'โปรแกรมนับเลข',
              style: TextStyle(color: Color.fromARGB(255, 105, 10, 53), fontSize: 24),
              
            ),
            
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
              
              
            ),
            
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 236, 155, 180),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 232, 94, 136),
      ), 
    );
  }
}
