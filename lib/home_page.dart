// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_qr_example/qr_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textQrController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("QR Code Example"),
          actions: const [],
        ),
        body: Column(
          children: [
            TextField(
              controller: textQrController,
              decoration: const InputDecoration(
                label: Text('Input Text QR Code'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return QRView(textQR: textQrController.text);
                  },
                ));
              },
              child: const Text('Generate QR Code'),
            )
          ],
        ));
  }
}
