import 'package:flutter/material.dart';
import 'package:jujiiz_engine/login_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    _waitAndGoToLogin(
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      ),
    );
  }

  _waitAndGoToLogin(Function callback) async {
    await Future.delayed(const Duration(milliseconds: 3000));
    callback();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amberAccent,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'JuJiiz Client',
              style: TextStyle(
                color: Colors.black,
                fontSize: 56,
                fontWeight: FontWeight.w500,
              ),
            ),
            CircularProgressIndicator(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
