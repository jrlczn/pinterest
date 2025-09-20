import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Responsive columns
    int crossAxisCount = size.width > 1000
        ? 5
        : size.width > 600
        ? 3
        : 2;

    final List<String> images = List.generate(
      20,
      (index) => "assets/${(index % 5) + 1}.png",
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "For you",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Container(width: 70, height: 2, color: Colors.white),
              const SizedBox(height: 16),

              // Responsive Grid
              Expanded(
                child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(images[index], fit: BoxFit.cover),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
