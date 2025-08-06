import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DesignPage extends StatelessWidget {
  const DesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFF2B2F34),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  const Text(
                    'The Dark Knight',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Movie Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/dark_knight.jpg', 
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Year, Duration, PG
                  Row(
                    children: [
                      const Text('2008'),
                      const SizedBox(width: 8),
                      const Text('152 min'),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          'PG-13',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // Tags
                  Wrap(
                    spacing: 8,
                    children: const [
                      TagChip(label: 'Action'),
                      TagChip(label: 'Crime'),
                      TagChip(label: 'Drama'),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // Rating
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.greenAccent),
                      SizedBox(width: 4),
                      Text(
                        '9.0/10',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 6),
                      Text('(2.5M votes)'),
                    ],
                  ),

                  const SizedBox(height: 14),

                  const Divider(color: Colors.white24),

                  // Director
                  const LabelValue(label: 'Director:', value: 'Christopher Nolan'),

                  const SizedBox(height: 4),

                  // Writers
                  const LabelValue(label: 'Writers:', value: 'Jonathan Nolan, Christopher Nolan'),

                  const SizedBox(height: 12),

                  // Plot
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Language & Country
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconText(icon: Icons.language, text: 'English'),
                      IconText(icon: Icons.flag, text: 'United States'),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // Awards
                  const IconText(
                    icon: FontAwesomeIcons.award,
                    text: 'Won 2 Oscars',
                  ),

                  const SizedBox(height: 20),

                  // Shuffle Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Shuffle',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TagChip extends StatelessWidget {
  final String label;
  const TagChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.green.shade900,
      labelStyle: const TextStyle(color: Colors.white),
    );
  }
}

class LabelValue extends StatelessWidget {
  final String label;
  final String value;
  const LabelValue({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: label,
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        children: [
          TextSpan(
            text: ' $value',
            style: const TextStyle(fontWeight: FontWeight.normal, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.greenAccent),
        const SizedBox(width: 6),
        Text(text),
      ],
    );
  }
}
