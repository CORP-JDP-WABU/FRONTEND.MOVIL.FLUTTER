import 'package:flutter/material.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/profile/screens/my_profile_view.dart';
import 'package:wabu/features/profile/widgets/my_profile_item.dart';
import 'package:wabu/features/search/presentation/presentation.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

class MyProfileBody extends StatelessWidget {
  const MyProfileBody({
    super.key,
    required this.studentTemporal,
  });

  final StudentTemporal studentTemporal;

  bool hasOptionalQualifications(Teacher? teacher) {
    final optionalQualifications = teacher?.course?.optionalQualifications;

    if (optionalQualifications == null) return false;

    for (var element in optionalQualifications) {
      if ((element.countQualifications ?? 0) > 0) {
        return true;
      }
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 32,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '¿Qué tanto colaboras con la comunidad?',
                  style: TextStyle(
                    color: Color(0xFF02336A),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyProfileItem(
                  linearGradient: LinearGradient(colors: [
                    Color.fromRGBO(5, 105, 218, 1.000),
                    Color.fromRGBO(2, 51, 106, 1.000),
                  ]),
                  label: 'Documentos Subidos',
                  
                  iconAssetPath: 'assets/images/pngs/documentos 1.png',
                  child: Text(
                    '127',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                MyProfileItem(
                  linearGradient: LinearGradient(colors: [
                    Color.fromRGBO(131, 165, 255, 1.000),
                    Color.fromRGBO(78, 203, 255, 1.000),
                  ]),
                  label: 'Reviews realizados',
                  
                  iconAssetPath:
                      'assets/images/pngs/review-icon-png-9831 1.png',
                  child: Text(
                    '127',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyProfileItem(
                  linearGradient: LinearGradient(colors: [
                    Color.fromRGBO(158, 0, 255, 1.000),
                    Color.fromRGBO(101, 16, 153, 1.000),
                  ]),
                  label: 'Descargas a mis documentos',
                  
                  iconAssetPath: 'assets/images/pngs/descargas 1.png',
                  child: Text(
                    '127',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                MyProfileItem(
                  linearGradient: LinearGradient(colors: [
                    Color.fromRGBO(19, 213, 184, 1.000),
                    Color.fromRGBO(14, 179, 155, 1.000),
                  ]),
                  label: 'Likes a documentos subidos',
                  
                  iconAssetPath: 'assets/images/pngs/likes 2.png',
                  child: Text(
                    '127',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyProfileItem(
                  linearGradient: LinearGradient(colors: [
                    Color.fromRGBO(255, 108, 149, 0.91),
                    Color.fromRGBO(255, 0, 71, 1.000),
                  ]),
                  label: 'Sugerencias de información',                
                  iconAssetPath: 'assets/images/pngs/sugerencias 1.png',
                  child: Text(
                    '127',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                MyProfileItem(
                  linearGradient: LinearGradient(colors: [
                    AppTheme.primarySmashBackgroundColor,
                    AppTheme.secondarySmashBackgroundColor,
                  ]),
                  label: 'N° Amigos en WABU',                
                  iconAssetPath: 'assets/images/pngs/amigos 1.png',
                  child: Text(
                    '127',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Mis puntos y créditos',
                  style: TextStyle(
                    color: Color(0xFF02336A),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyProfileItem(
                  linearGradient: LinearGradient(colors: [
                    Color.fromRGBO(25, 135, 4, 1.000),
                    Color.fromRGBO(31, 220, 0, 1.000),
                  ]),
                  label: 'Puntos',
                  iconAssetPath: 'assets/images/pngs/points 2.png',
                  child: Text(
                    '127',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                MyProfileItem(
                  linearGradient: LinearGradient(colors: [
                    Color.fromRGBO(255, 138, 0, 1.000),
                    Color.fromRGBO(241, 131, 0, 0.21),
                  ]),
                  label: 'Créditos',
                  iconAssetPath: 'assets/images/pngs/Creditos 1.png',
                  child: Text(
                    '127',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
