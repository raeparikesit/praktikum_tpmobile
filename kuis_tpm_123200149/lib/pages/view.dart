import 'package:flutter/material.dart';
import 'dart:core';
import 'detail.dart';

import '../models/coffee_menu.dart';

class View extends StatefulWidget {
  const View({super.key});

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KUIS Praktikum Teknologi dan Pemrograman Mobile"),
      ),
      body: ListView.builder(
        itemCount: coffeeList.length,
        itemBuilder: (context, index) {
          final CoffeeMenu identity = coffeeList[index];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail(
                              identity: identity,
                            )));
              },
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(identity.imageUrls[0]),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        identity.name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        identity.price,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
