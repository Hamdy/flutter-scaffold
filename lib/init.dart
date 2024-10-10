import 'package:app/client.dart';
import 'package:app/firebase_options.dart';
import 'package:app/storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

class AppInitializer {
  static Future<void> initApplication() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Storage.initialize();
    await Client.initialize();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
