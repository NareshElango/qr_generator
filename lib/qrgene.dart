import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_4/qrbutton.dart';
import 'package:qr_flutter/qr_flutter.dart';

class qrgene extends StatefulWidget {
  const qrgene({super.key});

  @override
  State<qrgene> createState() => _qrgeneState();
}

class _qrgeneState extends State<qrgene> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your QR Code",
          style: TextStyle(
            color: Colors.white70,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: QrImageView(
          data: controller.text.isNotEmpty
              ? controller.text
              : 'URL is not provied',
          size: 300,
          embeddedImageStyle: const QrEmbeddedImageStyle(
              size: Size(
                100,
                100,
              ),
            ),
        ),
      ),
    );
  }
}
