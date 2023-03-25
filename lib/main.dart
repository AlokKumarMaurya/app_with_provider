import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => Text(),
      ),
    ], child: const MaterialApp(home: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:const Center(
        child:CircularProgressIndicator()
      ),
    );
  }
}

class Text extends ChangeNotifier {}

class Temp {
  Future<String> getData() async {
    var aa = await Future.delayed(const Duration(seconds: 4))
        .then((value) => "done");
    return aa;
  }
}
