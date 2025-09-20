import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(size.width * 0.05),
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/profile.png"),
            ),
            const SizedBox(height: 12),
            const Text(
              "Justin Nabunturan",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              "@justinthegreat",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            const SizedBox(height: 20),

            const Text(
              "Your Pins",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // Responsive Pinterest Grid
            MasonryGridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: size.width > 1000
                  ? 5
                  : size.width > 600
                  ? 3
                  : 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              itemCount: 12,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/${(index % 5) + 1}.png",
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
