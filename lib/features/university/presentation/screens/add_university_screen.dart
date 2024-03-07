import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wabu/common/widgets/widgets.dart';

class AddUniversityScreen extends StatelessWidget {
  const AddUniversityScreen({super.key});

  static const String name = 'add_university';
  static const String route = '/$name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton.filled(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      shape: MaterialStatePropertyAll(
                        CircleBorder(
                          side: BorderSide(
                            color: Color(0xFFD9D9D9),
                          ),
                        ),
                      ),
                    ),
                    onPressed: () => context.pop(),
                    icon: const Icon(
                      Icons.close_rounded,
                      color: Color(0xFFD9D9D9),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Parece que tu universidad no está en WABU todavía',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF02336A),
                    fontFamily: 'GothamRounded',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 1,
                  color: const Color(0xFFEAEAEA),
                ),
                const SizedBox(height: 36),
                Image.asset(
                  'assets/images/pngs/university.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 36),
                const Text(
                  'Puedes agregarla siguiendo este enlace:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF646464),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 28),
                CustomFilledButton(
                  text: 'Agregar mi universidad',
                  textColor: Colors.white,
                  linearGradient: primaryButtonLinearGradient,
                  verticalPadding: 12,
                  onPressed: () async {
                    var url = Uri.parse(
                        'https://docs.google.com/forms/d/e/1FAIpQLSft3nGRVEgmCNDzPeYViZlyBUu5mbOM74WxCeDSTjBfeG5akA/viewform');

                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    }
                  },
                ),
                const SizedBox(height: 28),
                const Text(
                  'Nuestro equipo revisará las sugerencias e irá agregando nuevas universidades. Te notificaremos cuando esté lista',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF646464),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
