import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:wabu/utils/utils.dart';

enum AnalyticsUserPropertyEnum {
  firstName('FIRST_NAME'),
  lastName('LAST_NAME'),
  studentId('STUDENT_ID'),
  university('UNIVERSITY'),
  career('CAREER'),
  cycle('CYCLE'),
  environment('ENVIRONMENT');

  const AnalyticsUserPropertyEnum(this.key);
  final String key;
}

class FirebaseAnalyticsHandler {
  factory FirebaseAnalyticsHandler._() => _instance;

  FirebaseAnalyticsHandler._internal() {
    _analytics = FirebaseAnalytics.instance;
  }

  static final FirebaseAnalyticsHandler _instance =
      FirebaseAnalyticsHandler._internal();

  static FirebaseAnalyticsHandler get instance => FirebaseAnalyticsHandler._();

  late FirebaseAnalytics _analytics;

  Future<void> setDefaultUserProperties({
    required String environment,
  }) async {
    try {
      await _analytics.setUserProperty(
        name: AnalyticsUserPropertyEnum.environment.key,
        value: environment,
      );
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> setLoggedUserProperties({
    required String firstName,
    required String lastName,
    required String studentId,
    required String university,
    required String career,
    required String cycle,
  }) async {
    try {
      await _analytics.setUserProperty(
        name: AnalyticsUserPropertyEnum.firstName.key,
        value: firstName,
      );
      await _analytics.setUserProperty(
        name: AnalyticsUserPropertyEnum.lastName.key,
        value: lastName,
      );
      await _analytics.setUserProperty(
        name: AnalyticsUserPropertyEnum.studentId.key,
        value: studentId,
      );
      await _analytics.setUserProperty(
        name: AnalyticsUserPropertyEnum.university.key,
        value: university,
      );
      await _analytics.setUserProperty(
        name: AnalyticsUserPropertyEnum.career.key,
        value: career,
      );
      await _analytics.setUserProperty(
        name: AnalyticsUserPropertyEnum.cycle.key,
        value: cycle,
      );
    } catch (e) {
      logger.e(e);
    }
  }

  void logSelectContent({
    required String contentType,
    required String itemId,
  }) async {
    try {
      await _analytics.logSelectContent(
        contentType: contentType,
        itemId: itemId,
      );
    } catch (e) {
      logger.e(e);
    }
  }

  void logScreenView({
    required AnalyticsScreen analyticsScreen,
  }) async {
    try {
      await _analytics.logScreenView(
        screenClass: analyticsScreen.name,
        screenName: analyticsScreen.name,
      );
    } catch (e) {
      logger.e(e);
    }
  }
}
