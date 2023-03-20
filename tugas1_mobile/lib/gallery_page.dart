import 'package:flutter/material.dart';
import 'package:tugas1_mobile/calculator.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Team Profile"),
      ),
      body: const Center(
        child: Text(
          "Halo!! Perkenalkan kami:\n"
          "1. Bima Novianto\n"
          "2. Arifien Yudha Prahastowo\n"
          "3. Dikhi Dewantoro",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return const Calcu();
            }),
          );
        },
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
