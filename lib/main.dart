import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorSchemeSeed: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, brightness: Brightness.light),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      themeMode: ThemeMode.system,
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  //elevation: 1,
                  //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  ),
              child: const Text('Materal 3'),
            ),
            const SizedBox(
              height: 10,
            ),
            FilledButton(
              onPressed: () {},
              //style: ,
              child: const Text('Materal 3'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new_rounded),
              label: const Text('Material U'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(26),
              child: TextField(
                //controller: _controllerOutlined,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  //suffixIcon: _ClearButton(controller: _controllerOutlined),
                  labelText: 'Outlined',
                  hintText: 'hint text',
                  helperText: 'supporting text',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                width: 200,
                child: TextField(
                  maxLength: 10,
                  //maxLengthEnforcement: MaxLengthEnforcement.none,
                  //controller: _controllerFilled,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    // suffixIcon: _ClearButton(controller: _controllerFilled),
                    labelText: 'Filled',
                    hintText: 'hint text',
                    helperText: 'supporting text',
                    filled: true,
                    errorText: 'error text',
                    errorStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
