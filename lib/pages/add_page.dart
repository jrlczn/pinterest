import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Pin"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.25,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Icon(Icons.add_a_photo, color: Colors.white70, size: 50),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                hintText: "Add a title",
                hintStyle: TextStyle(color: Colors.white54),
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                hintText: "Tell everyone what your Pin is about",
                hintStyle: TextStyle(color: Colors.white54),
                border: InputBorder.none,
              ),
              style: TextStyle(color: Colors.white),
              maxLines: 3,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.red,
              ),
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
