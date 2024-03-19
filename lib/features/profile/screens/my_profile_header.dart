import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';
import 'package:wabu/common/widgets/profile_clipper.dart';
import 'package:wabu/features/profile/screens/my_profile_view.dart';

class MyProfileHeader extends StatelessWidget {
  const MyProfileHeader({
    super.key,
    required this.studentTemporal,
  });

  final StudentTemporal studentTemporal;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: 360,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        ClipPath(
          clipper: ProfileClipper(),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: SafeArea(
              child: _MyProfileHeaderContent(studentTemporal: studentTemporal),
            ),
          ),
        ),
      ],
    );
  }
}

class _MyProfileHeaderContent extends StatelessWidget {
  const _MyProfileHeaderContent({
    required this.studentTemporal,
  });

  final StudentTemporal? studentTemporal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBackButton(
                color: Colors.white,
                onTap: () => context.pop(),
              ),
              const Lateral()
            ],
          ),
          const SizedBox(height: 16),
          Material(
            shape: const CircleBorder(
              side: BorderSide(
                color: Colors.white,
                width: 3,
              ),
            ),
            child: CircleAvatar(
              radius: 72,
              backgroundImage: NetworkImage(studentTemporal?.profileUrl ?? ''),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            studentTemporal?.firstName ?? 'no-last-name',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              height: 24 / 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            studentTemporal?.courseName ?? 'no-first-name',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              height: 24 / 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            studentTemporal?.semestre ?? 'no-first-name',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              height: 24 / 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class Lateral extends StatelessWidget {
  const Lateral({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu),
      color: Colors.white,
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              contentPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              content: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      width: 200,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child:const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OptionItem(
                            icon: Icons.library_books,
                            text: 'Términos y Condiciones',
                          ),
                          OptionItem(
                            icon: Icons.privacy_tip,
                            text: 'Políticas de Privacidad',
                          ),
                          OptionItem(
                            icon: Icons.report,
                            text: 'Reportar',
                          ),
                          OptionItem(
                            icon: Icons.logout,
                            text: 'Cerrar Sesión',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class OptionItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const OptionItem({super.key, 
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 10),
        Text(text),
      ],
    );
  }
}
