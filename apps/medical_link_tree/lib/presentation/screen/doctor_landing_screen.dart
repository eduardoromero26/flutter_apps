import 'package:flutter/material.dart';
import 'package:medical_link_tree/domain/doctor_model.dart';
import 'package:medical_link_tree/presentation/widgets/footer_widget.dart';
import 'package:medical_link_tree/presentation/widgets/link_tree_button_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class DoctorLandingScreen extends StatelessWidget {
  final DoctorModel doctor;

  const DoctorLandingScreen({super.key, required this.doctor});

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
                Color(0xFF4BA8C0),
                Color(0xFF0A1D8D),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${doctor.gender == Gender.female ? 'Dra.' : 'Dr.'} ${doctor.firstName} ${doctor.lastName}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const CircleAvatar(
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
                Center(
                  child: Text(
                    '${doctor.speciality} - Cédula Profesional: ${doctor.professionalLicense}',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),

                const SizedBox(
                  height: 4,
                ),
                Text(
                  doctor.description,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(
                  height: 4,
                ),
                if (doctor.description2 != null)
                  Text(
                    doctor.description2!,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),

                if (doctor.description2 != null)
                  const SizedBox(
                    height: 4,
                  ),
                Text(
                  '📍 ${doctor.location}',
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(
                  height: 4,
                ),
                if (doctor.location2 != null)
                  Text(
                    '📍 ${doctor.location2}',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                if (doctor.location2 != null)
                  const SizedBox(
                    height: 4,
                  ),
                const SizedBox(
                  height: 40,
                ),
                //whatsapp
                if (doctor.linkTree.whatsappNumber != null)
                  LinkTreeButton(
                    title: 'Contactar por WhatsApp',
                    onPressed: () {
                      _launchInBrowser(
                          Uri.parse(doctor.linkTree.whatsappNumber!));
                    },
                    color: const Color(0xFF46D268),
                    icon: Icons.message,
                  ),

                // Contactar por Llamada
                if (doctor.linkTree.callNumber != null)
                  LinkTreeButton(
                    title: 'Contactar por Llamada',
                    onPressed: () {
                      _launchInBrowser(Uri.parse('tel:${doctor.linkTree.callNumber}'));
                    },
                    color: const Color(0xFF4BA8C0),
                    icon: Icons.call,
                  ),
                // Ubicación en Maps
                if (doctor.linkTree.location1 != null)
                  LinkTreeButton(
                    title: 'Ubicación en Maps',
                    onPressed: () {
                      _launchInBrowser(
                          Uri.parse(doctor.linkTree.location1!));
                    },
                  color: const Color(0xFFD4574A),
                    icon: Icons.location_on,
                  ),
                if (doctor.linkTree.location2 != null)
                  LinkTreeButton(
                    title: 'Ubicación en Maps',
                    onPressed: () {
                      _launchInBrowser(
                          Uri.parse(doctor.linkTree.location2!));
                    },
                  color: const Color.fromARGB(255, 209, 107, 96),
                    icon: Icons.location_on,
                  ),
                // Doctoralia
                if (doctor.linkTree.doctoraliaUrl != null)
                  LinkTreeButton(
                    title: 'Doctoralia',
                    onPressed: () {
                      _launchInBrowser(
                          Uri.parse(doctor.linkTree.doctoraliaUrl!));
                    },
                    color: const Color(0xFF4BA8C0),
                    icon: Icons.medical_services,
                  ),
                // Facebook
                if (doctor.linkTree.facebookUrl != null)
                  LinkTreeButton(
                    title: 'Facebook',
                    onPressed: () {
                      _launchInBrowser(
                          Uri.parse(doctor.linkTree.facebookUrl!));
                    },
                    color: const Color(0xFF3B5998),
                    icon: Icons.facebook,
                  ),
                // TikTok
                if (doctor.linkTree.tiktokUrl != null)
                  LinkTreeButton(
                    title: 'TikTok',
                    onPressed: () {
                      _launchInBrowser(
                          Uri.parse(doctor.linkTree.tiktokUrl!));
                    },
                    color: const Color(0xFF69C9D0),
                    icon: Icons.video_collection,
                  ),
                // Instagram
                if (doctor.linkTree.instagramUrl != null)
                  LinkTreeButton(
                    title: 'Instagram',
                    onPressed: () {
                      _launchInBrowser(
                          Uri.parse(doctor.linkTree.instagramUrl!));
                    },
                    color: const Color(0xFFC13584),
                    icon: Icons.camera_alt,
                  ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
               const FooterWidget()
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