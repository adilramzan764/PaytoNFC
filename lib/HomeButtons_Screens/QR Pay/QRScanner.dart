

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'QR_Pay.dart';

class QRViewExampleState extends StatefulWidget {
  const QRViewExampleState({Key? key}) : super(key: key);

  @override
  State<QRViewExampleState> createState() => _QRViewExampleStateState();
}

class _QRViewExampleStateState extends State<QRViewExampleState> {

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),

          Expanded(
            flex: 1,
            child: Center(
              child: (result != null)
                  ? Text(
                  'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                  : Text('Scan a code'),
            ),
          )
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
        return QR_Pay();
      }));
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}