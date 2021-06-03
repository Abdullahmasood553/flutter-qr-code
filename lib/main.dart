import 'dart:async';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:qr_code/homepage.dart';

void main() => runApp(
      MaterialApp(
        title: 'My APP',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return QRScannerCode();
  }
}

// class QRCode extends StatefulWidget {
//   @override
//   _QRCodeState createState() => _QRCodeState();
// }

// class _QRCodeState extends State<QRCode> {
//   String result = "Hi There";

//   Future _scanQR() async {
//     try {
//       ScanResult qrScanResult = await BarcodeScanner.scan();
//       String qrResult = qrScanResult.rawContent;
//       setState(() {
//         result = qrResult;
//       });
//     } on PlatformException catch (ex) {
//       if (ex.code == BarcodeScanner.cameraAccessDenied) {
//         setState(() {
//           result = "Cameria permission was denied";
//         });
//       } else {
//         setState(() {
//           result = "Unknown Error $ex";
//         });
//       }
//     } on FormatException {
//       setState(() {
//         result = "You pressed the back button before scanning anything";
//       });
//     } catch (ex) {
//       setState(() {
//         result = "Unknown Error $ex";
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(
//           result,
//           style: TextStyle(
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         icon: Icon(Icons.camera_alt),
//         onPressed: _scanQR,
//         label: Text('Scan'),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }
