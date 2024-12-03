import 'package:flutter/material.dart';

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
      child: Column(
        children: [
          SizedBox(
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
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                minimumSize: const Size(300, 50),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
