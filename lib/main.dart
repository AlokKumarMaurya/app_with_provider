import 'package:app_with_provider/utils/routes/appRoutes.dart';
import 'package:app_with_provider/utils/routes/routesName.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Text(),
          ),
        ],
        child: const MaterialApp(
          initialRoute: RoutesName.login,
          onGenerateRoute: AppRoutes.generateRoute,
        ));
  }
}

class Text extends ChangeNotifier {}
