import 'package:flutter/material.dart';
import 'package:qr_code/scan.dart';
import 'package:qr_code/generate.dart';

class QRScannerCode extends StatefulWidget {
  @override
  _QRScannerCodeState createState() => _QRScannerCodeState();
}

class _QRScannerCodeState extends State<QRScannerCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/qr_code.png'),
            elevateButton("Scan QR Code", Scan()),
            SizedBox(
              height: 5,
            ),
            elevateButton("Gernate QR Code", Generate())
          ],
        ),
      ),
    );
  }

  Widget elevateButton(String text, Widget widget) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: Colors.white),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
