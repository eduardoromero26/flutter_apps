import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DraGheidyChinchillaScreen extends StatelessWidget {
  const DraGheidyChinchillaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF4BA8C0), // Azul claro
                Color(0xFF0A1D8D), // Azul oscuro
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 60,
                ),
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 52,
                    backgroundImage: AssetImage('assets/dra_gheidy.png'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Dra. Gheidy Chinchilla',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12,
                      child: Icon(
                        Icons.verified,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                const Center(
                  child: Text(
                    'Ginecología y Obstetricia - Cédula 12412538 (UNAM)',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),

                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Torre Cénit Medical Center, Consultorio 920',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  '📍 Mérida, Yucatán',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(
                  height: 40,
                ),
                //whatsapp
                LinkTreeButton(
                  title: 'Contactar por WhatsApp',
                  onPressed: () {
                    _launchInBrowser(Uri.parse('https://wa.me/529993428050'));
                  },
                  color: const Color(0xFF46D268),
                  icon: Icons.message,
                ),
                const SizedBox(height: 20),
                // Contactar por Llamada
                LinkTreeButton(
                  title: 'Contactar por Llamada',
                  onPressed: () {
                    _launchInBrowser(Uri.parse('tel:+529992130267'));
                  },
                  color: const Color(0xFF0E3689),
                  icon: Icons.phone,
                ),
                const SizedBox(height: 20),
                // Ubicación en Maps
                LinkTreeButton(
                  title: 'Ubicación en Maps',
                  onPressed: () {
                    _launchInBrowser(
                        Uri.parse('https://maps.app.goo.gl/cPSj38wCoSgNgXy4A'));
                  },
                  color: const Color(0xFFD4574A),
                  icon: Icons.location_on,
                ),
                const SizedBox(height: 20),
                // Doctoralia
                // LinkTreeButton(
                //   title: 'Doctoralia',
                //   onPressed: (){},
                //   color: const Color(0xFF02C3A5),
                //   icon: Icons.medical_services,
                // ),
                // Facebook
                LinkTreeButton(
                  title: 'Facebook',
                  onPressed: () {
                    _launchInBrowser(Uri.parse(
                        'https://www.facebook.com/ginecologachinchilla/'));
                  },
                  color: const Color(0xFF3C78E8),
                  icon: Icons.facebook,
                ),
                const SizedBox(height: 20),
                // TikTok
                LinkTreeButton(
                  title: 'TikTok',
                  onPressed: () {
                    _launchInBrowser(Uri.parse(
                        'https://www.tiktok.com/@dragheidychinchilla'));
                  },
                  color: const Color(0xFF080808),
                  icon: Icons.video_collection,
                ),
                const SizedBox(height: 20),
                // Instagram
                LinkTreeButton(
                  title: 'Instagram',
                  onPressed: () {
                    _launchInBrowser(Uri.parse(
                        'https://www.instagram.com/gineco_chinchilla'));
                  },
                  color: const Color(0xFFFD14CC),
                  icon: Icons.photo_camera,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                const Text(
                  '© Médicos Honestos, Medicads Mérida',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(
                  height: 24,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}

class LinkTreeButton extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;
  final VoidCallback onPressed;
  const LinkTreeButton({
    super.key,
    required this.title,
    this.color = const Color(0xFF4BA8C0),
    this.icon = Icons.link,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 600,
      ),
      child: SizedBox(
        height: 58,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          label: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            minimumSize: const Size(300, 50),
          ),
        ),
      ),
    );
  }
}
