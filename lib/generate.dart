import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

String qrData = "https://github.com/neon97";

class Generate extends StatefulWidget {
  Generate({Key key}) : super(key: key);

  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            QrImage(data: qrData),
            SizedBox(height: 18.0),
            Text('Get your data/link to the QR Code'),
            TextField(
              controller: qrText,
              decoration: InputDecoration(hintText: "Enter the data/link"),
            ),
            SizedBox(height: 10.0,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: Colors.white),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () async {
                if (qrText.text.isEmpty) {
                  setState(() {
                    qrData = "https://flutter.dev";
                  });
                } else {
                  setState(() {
                    qrData = qrText.text;
                  });
                }
              },
              child: Text(
                "Genrate the QR Code",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  final qrText = TextEditingController();
}
