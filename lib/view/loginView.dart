import 'package:app_with_provider/utils/routes/routesName.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("data"),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, RoutesName.home),
              child: const Text("Press"))
        ],
      ),
    );
  }
}
