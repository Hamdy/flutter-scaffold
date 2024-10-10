import 'dart:io';

import 'package:app/client.dart';
import 'package:app/const.dart';
import 'package:app/firebase_options.dart';
import 'package:app/schema.dart';
import 'package:app/storage.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';

class AppInitializer {
  static Future<void> initApplication() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Storage.initialize();
    await Client.initialize();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await initializeDeviceInfo();
  }

  static Future<void> initializeDeviceInfo() async {
    Device? device = await Storage.db.devices.get(1);
    if (device != null) {
      return;
    }

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    DeviceType type = DeviceType.unknown;
    String token = await FirebaseMessaging.instance.getToken() ?? "";
    String serial = "";
    String manufacturer = "";
    String model = "";
    String name = "";
    String version = "";

    if (Platform.isIOS) {
      type = DeviceType.ios;
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      serial = iosInfo.identifierForVendor ?? "";
      manufacturer = "apple";
      model = iosInfo.model;
      name = iosInfo.name;
      version = iosInfo.systemVersion;
    } else if (Platform.isAndroid) {
      type = DeviceType.android;
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      serial = androidInfo.serialNumber;
      manufacturer = androidInfo.manufacturer;
      model = androidInfo.model;
      name = androidInfo.brand;
      version = androidInfo.version.release;
    }

    device = Device(
        type: type,
        token: token,
        serial: serial,
        manufacturer: manufacturer,
        model: model,
        name: name,
        version: version);

    await Storage.db.writeTxn(() async {
      await Storage.db.devices.put(device!); // insert & update
    });
  }
}
