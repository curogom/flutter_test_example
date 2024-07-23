import 'package:flutter/material.dart';

class WidgetTestApp extends StatelessWidget {
  const WidgetTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Widget Test App',
      home: WidgetTestPage(),
    );
  }
}

class WidgetTestPage extends StatefulWidget {
  const WidgetTestPage({super.key});

  @override
  State<WidgetTestPage> createState() => _WidgetTestPageState();
}

class _WidgetTestPageState extends State<WidgetTestPage> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Test Page'),
      ),
      body: Center(
        child: Text(
          '현재 카운트: $count',
          style: const TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => setState(() => count++),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => setState(() => count--),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
