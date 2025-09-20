import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            _buildCategoryChips(),
            const SizedBox(height: 12),
            _buildPinterestGrid(size),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: Colors.white70),
            const SizedBox(width: 8),
            const Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search Pinterest",
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChips() {
    final categories = ["All", "Fashion", "Food", "Art", "Travel", "DIY"];
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              categories[index],
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPinterestGrid(Size size) {
    int crossAxisCount = size.width > 1000
        ? 5
        : size.width > 600
        ? 3
        : 2;

    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
        child: MasonryGridView.count(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          itemCount: 10,
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
      ),
    );
  }
}
