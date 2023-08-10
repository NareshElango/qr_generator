import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_4/qrgene.dart';
import 'package:qr_flutter/qr_flutter.dart';

class qrbutton extends StatefulWidget {
  const qrbutton({super.key});

  @override
  State<qrbutton> createState() => _qrbuttonState();
}

TextEditingController controller = TextEditingController();

class _qrbuttonState extends State<qrbutton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "QR code generator",
          style: TextStyle(
            color: Colors.white70,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: SizedBox(
              width: 350,
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Enter the url"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  
                }); 
                
              },
              child: const Text(
                "Generate QR Code",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        
          ),
          const SizedBox(height: 20,),
          QrImageView(
          data: controller.text.isNotEmpty
              ? controller.text
              : 'URL is not provied',
          size: 150,
          embeddedImageStyle: const QrEmbeddedImageStyle(
              size: Size(
                100,
                100,
              ),
            ),
         ),
          
        ],
      ),
    ));
  }
}
