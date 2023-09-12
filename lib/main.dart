import 'package:flutter/material.dart';
import './app.dart';

// firebase
import 'package:firebase_core/firebase_core.dart';
import './firebase_options.dart';

// Riverpod
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter/foundation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (defaultTargetPlatform != TargetPlatform.windows &&
      defaultTargetPlatform != TargetPlatform.linux) {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  } else {
    print(
        'DefaultFirebaseOptions are not supported for this platform. $defaultTargetPlatform');
  }

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
