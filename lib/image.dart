
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImagePage"),
        backgroundColor: Colors.lime,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // First photo: Local image
            Image.asset(
              "assets/images/flutter.png",
              height: 200,
              width: 200,
            ),

            const SizedBox(height: 20),

            // Second photo: Network image
            Image.network(
              "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=300",
              height: 200,
              width: 200,

              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }

                return const CircularProgressIndicator();
              },

              errorBuilder: (context, error, stackTrace) {
                return const Text("Network image failed to load");
              },
            ),
          ],
        ),
      ),
    );
  }
}
