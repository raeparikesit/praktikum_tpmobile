import 'package:flutter/material.dart';

import './identitas.dart';

class DetailIdentitas extends StatelessWidget {
  final String identityName;
  final String identityFotoUrls;
  final String identityUsername;
  final List<String> identityEmail;
  final List<List<String>> identityCompany;

  const DetailIdentitas(
      {required this.identityName,
      required this.identityFotoUrls,
      required this.identityUsername,
      required this.identityEmail,
      required this.identityCompany});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Praktikum Teknologi dan Pemrograman Mobile"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 250,
              child: Image.network(identityFotoUrls),
            ),
            Text(
              "$identityName",
              style: TextStyle(fontSize: 20),
            ),
            Text("@$identityUsername"),
            SizedBox(
              height: 10,
            ),
            Text(
              identityEmail.join(' / '),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              identityCompany.join(', '),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
