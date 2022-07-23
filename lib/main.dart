import 'package:chatapp/screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TronD Chat',
      theme: ThemeData(
        primaryColor: Theme.of(context).backgroundColor,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (_) => const HomeScreen(title: 'Tron.D Chat'),
        '/conversation': (_) => const ChatRoomScreen(),
      },
    );
  }
}
