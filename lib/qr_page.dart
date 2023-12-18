import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:picknpass/cart.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRPage extends StatefulWidget {
  const QRPage({super.key});

  @override
  State<QRPage> createState() => _QRPageState();
}

class _QRPageState extends State<QRPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? result;
  bool isScanned = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 0),
                      child: Text(
                        'Welcome to our store!',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 12.0),
                      child: Text(
                        'Scan the QR Code to enter the store',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 350,
                    height: 450,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: (!isScanned)
                          ? QRView(
                              key: qrKey,
                              onQRViewCreated: (controller) {
                                controller.scannedDataStream
                                    .listen((scanData) async {
                                  if (!isScanned) {
                                    if (mounted) {
                                      result = scanData;
                                      if (result!.code != null) {
                                        logQREntry(result!.code!);
                                      }
                                    }
                                  }
                                });
                              },
                              overlay: QrScannerOverlayShape(
                                  borderColor: const Color(0xFF8D0326),
                                  borderRadius: 10,
                                  borderLength: 30,
                                  borderWidth: 10,
                                  cutOutSize: 250))
                          : const CircularProgressIndicator(),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 25),
                  //   child: SizedBox(
                  //     width: double.infinity,
                  //     height: 60,
                  //     child: TextButton(
                  //       onPressed: () {
                  //         Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) => const Cart()));
                  //       },
                  //       style: const ButtonStyle(
                  //           backgroundColor:
                  //               MaterialStatePropertyAll(Color(0xff3EC1FF)),
                  //           shape: MaterialStatePropertyAll(
                  //               RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.all(
                  //                       Radius.circular(10))))),
                  //       child: const Text(
                  //         'Start Shopping',
                  //         style: TextStyle(color: Colors.white, fontSize: 15),
                  //       ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
            appBar: AppBar(
              backgroundColor: const Color(0xff3EC1FF),
              elevation: 0,
              leading: IconButton(
                icon: SvgPicture.asset('assets/Menu.svg'),
                onPressed: () {},
              ),
              title: SvgPicture.asset('assets/logo.svg'),
            )));
  }

  void logQREntry(String result) async {
    if (result.contains('SAARPICKNPASS')) {
      setState(() {
        isScanned = true;
      });
Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Cart()));

    }
  }
}
