import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QRPage extends StatelessWidget {
  const QRPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 12.0),
                      child: Text(
                        'Welcome to our store!',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 12.0),
                      child: Text(
                        'Scan the QR Below',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Image.asset('assets/qr.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QRPage()));
                        },
                        child: Text(
                          'Start Shopping',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff3EC1FF)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))))),
                      ),
                    ),
                  )
                ],
              ),
            ),
            appBar: AppBar(
              backgroundColor: Color(0xff3EC1FF),
              elevation: 0,
              leading: IconButton(
                icon: SvgPicture.asset('assets/Menu.svg'),
                onPressed: () {},
              ),
              title: SvgPicture.asset('assets/logo.svg'),
            )));
  }
}
