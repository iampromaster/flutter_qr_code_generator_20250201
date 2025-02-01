import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MyQr extends StatefulWidget {
  const MyQr({super.key});

  @override
  State<MyQr> createState() => _MyQrState();
}

class _MyQrState extends State<MyQr> {
  String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MY QR CODE"),
        backgroundColor: Colors.deepPurple[200],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            QrImageView(
              embeddedImage: const AssetImage('images/logo.jpg'),
              embeddedImageStyle: const QrEmbeddedImageStyle(
                size: Size(60, 60),
              ),
              eyeStyle: const QrEyeStyle(
                eyeShape: QrEyeShape.square,
                color: Colors.green,
              ),
              data: data ?? '',
              size: 300,
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  data = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Enter your text',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
