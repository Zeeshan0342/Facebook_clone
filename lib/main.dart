import 'package:facebook_clone/forgot_password.dart';
import 'package:facebook_clone/login_facebook.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  bool _isLoading = false;
  void _handleLogin() async {
    setState(() {
      _isLoading = true;
    });
    await Future.delayed(Duration(seconds: 5));
    setState(() {
      _isLoading = false;
    });
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => login_facebook()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Facebook Clone'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.white70],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [Icon(Icons.arrow_back)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'English (US)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.keyboard_arrow_down_sharp)
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Icon(
              Icons.facebook_outlined,
              size: 70,
              color: Colors.blue,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 400,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Mobile number or email',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _isLoading
                ? CircularProgressIndicator()
                : GestureDetector(
                    onTap: _handleLogin,
                    child: Container(
                      width: 400,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => fortgotpassword())),
                child: Text('Forgot password?')),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text('Create new account',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
