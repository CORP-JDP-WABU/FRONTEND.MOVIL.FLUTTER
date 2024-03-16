import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/config/router/app_router.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/constants/constants.dart';
import 'package:wabu/firebase_options.dart';
import 'package:wabu/utils/firebase_analytics/firebase_analytics_handler.dart';
import 'package:wabu/utils/logger.dart';

// flutter build apk - build/app/outputs/flutter-apk/app-release.apk
// flutter build ios - build/ios/iphoneos/Runner.app

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);

    FirebaseAnalyticsHandler.instance.setDefaultUserProperties(
      environment: Globals.environment.name,
    );
  } catch (e) {
    logger.e(e);
  }

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const ProviderScope(child: MainApp())));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      title: 'Wabu App',
    );
  }
}
