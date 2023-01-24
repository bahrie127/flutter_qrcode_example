import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRView extends StatelessWidget {
  final String textQR;
  const QRView({
    Key? key,
    required this.textQR,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR View')),
      body: Column(children: [
        Center(
          child: QrImage(
            data: textQR,
            version: QrVersions.auto,
            size: 240,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(textQR),
      ]),
    );
  }
}
