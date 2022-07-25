import 'package:chatapp/screens/screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/screen.dart';
import 'package:device_preview_screenshot/device_preview_screenshot.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      tools: const [...DevicePreview.defaultTools, DevicePreviewScreenshot()],
      data: DevicePreviewData(
          isToolbarVisible: false,
          deviceIdentifier: Devices.ios.iPhone13ProMax.toString(),
          locale: 'en_US'),
      builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
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
