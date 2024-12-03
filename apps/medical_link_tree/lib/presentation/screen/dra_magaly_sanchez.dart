import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DraMagalySanchezScreen extends StatelessWidget {
  const DraMagalySanchezScreen({super.key});

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
                    backgroundImage:
                        AssetImage('assets/dra_magaly_sanchez.jpg'),
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
                      'Dra. Magaly Sánchez',
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
                    'Ginecóloga especialista en Reproducción.',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Torre Cénit Medical Center Altabrisa, Consultorio 920, Mérida, ',
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
                    _launchInBrowser(Uri.parse('tel:+529993428050'));
                  },
                  color: const Color(0xFF0E3689),
                  icon: Icons.phone,
                ),
                const SizedBox(height: 20),
                // Ubicación torre cenit
                LinkTreeButton(
                  title: 'Ubicación en Maps - Torre Cénit',
                  onPressed: () {
                    _launchInBrowser(
                        Uri.parse('https://goo.gl/maps/7Q6Z8Q7ZQ7Q2'));
                  },
                  color: const Color(0xFFD4574A),
                  icon: Icons.location_on,
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                // Doctoralia
                LinkTreeButton(
                  title: 'Doctoralia',
                  color: const Color(0xFF02C3A5),
                  onPressed: () {
                    _launchInBrowser(Uri.parse(
                      'https://www.doctoralia.com.mx/magaly-sanchez-gonzalez/ginecologo/yucatan',
                    ));
                  },
                  icon: Icons.medical_services,
                ),
                const SizedBox(height: 20),

                // Facebook
                LinkTreeButton(
                  title: 'Facebook',
                  onPressed: () {
                    _launchInBrowser(Uri.parse(
                        'https://www.facebook.com/dramagalyshanchez/'));
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
                        'https://www.tiktok.com/@ginecologamagalysanchez'));
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
                        'https://www.instagram.com/dramagalysanchez/'));
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
