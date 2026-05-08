import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.orange,
        scaffoldBackgroundColor: const Color(0xFFF7F7F7),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6C7A5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _header(),
                  const SizedBox(height: 30),
                  _stats(),
                  const SizedBox(height: 30),
                  _sectionTitle("About Me"),
                  const SizedBox(height: 10),
                  _aboutText(),
                  const SizedBox(height: 25),
                  _sectionTitle("Skills"),
                  const SizedBox(height: 10),
                  _skills(),
                  const SizedBox(height: 30),
                  _infoCard(
                    icon: Icons.location_on_outlined,
                    title: "Location",
                    subtitle: "Alor Setar, Kedah\nMalaysia",
                  ),
                  const SizedBox(height: 15),
                  _infoCard(
                    icon: Icons.school_outlined,
                    title: "Education",
                    subtitle: "Bachelor in Software Engineering",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // HEADER
  Widget _header() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 90,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage("assets/hadi.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                "Muhammad Fakhrulhadi Bin Mohd Haniffa",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "Flutter App Developer",
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // STATS
  Widget _stats() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        _StatItem(value: "10+", label: "Projects"),
        _StatItem(value: "2+", label: "Years Learning"),
        _StatItem(value: "3.8", label: "CGPA"),
      ],
    );
  }

  // SECTION TITLE
  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

  // ABOUT TEXT
  Widget _aboutText() {
    return Text(
      "I am a student who is interested in mobile application development "
      "and UI/UX design. I enjoy learning Flutter and creating clean, "
      "user-friendly interfaces as part of my academic projects.",
      style: TextStyle(color: Colors.grey.shade700, height: 1.6),
    );
  }

  // SKILLS
  Widget _skills() {
    return Wrap(
      spacing: 10,
      runSpacing: 8,
      children: const [
        Chip(label: Text("Flutter")),
        Chip(label: Text("Dart")),
        Chip(label: Text("UI Design")),
        Chip(label: Text("Firebase")),
        Chip(label: Text("Git & GitHub")),
      ],
    );
  }

  // INFO CARD
  Widget _infoCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFFFE8D6),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(icon, color: Colors.orangeAccent),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey.shade600, height: 1.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// STAT ITEM
class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.grey.shade600)),
      ],
    );
  }
}
