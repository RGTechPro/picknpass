import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:picknpass/exit_qr.dart';
import 'package:picknpass/pages/models/cartModel.dart';
import 'package:picknpass/provider/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:xpresspayments_gateway/xpresspayments_gateway.dart';

class Cart extends StatelessWidget {
  Cart({super.key});
  int get date => DateTime.now().microsecondsSinceEpoch;

  int get transactionId => Random().nextInt(1000000).floor().toInt();

  String get publicKey => "XPPUBK-e634d14d9ded04eaf05d5b63a0a06d2f-X";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance
              .collection('cart')
              .doc(Provider.of<UserProvider>(context, listen: false)
                  .currentUser!
                  .userId)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            if (!snapshot.hasData || !snapshot.data!.exists) {
              return const Center(child: Text('No items in cart'));
            }
            // Extracting data from the snapshot
            ShoppingCart cartData =
                ShoppingCart.fromList(snapshot.data!['items']);
            Provider.of<UserProvider>(context, listen: false)
                .setCartItems(cartData);
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 12.0, left: 3.5),
                      child: Text(
                        'Your Cart (${Provider.of<UserProvider>(context, listen: false).cartItems!.items.length} Items)',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12.0, left: 3.5),
                      child: Text(
                        'Total: ₹ ${Provider.of<UserProvider>(context, listen: false).getTotal()}',
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.2, bottom: 10, top: 5),
                  child: Container(
                    //width: 40,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 0.4),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: cartData.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      var item = cartData.items[index];

                      return Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Image.asset('assets/lorem.png'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 175,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(item.itemName,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 22)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(bottom: 8),
                                  child: Text('Asile no: 1',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 16)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Text('₹ ${item.total}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 24)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 25),
                                      child: SizedBox(
                                        width: 98,
                                        height: 35,
                                        child: TextButton(
                                          onPressed: () {
                                            // Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             const Cart()));
                                          },
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Color(0xff3EC1FF)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))))),
                                          child: Text(
                                            'Qty:   ${item.qty}',
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.symmetric(vertical: 25),
                                    //   child: SizedBox(
                                    //     width: 98,
                                    //     height: 35,
                                    //     child: TextButton(
                                    //       onPressed: () {
                                    //         Navigator.push(
                                    //             context,
                                    //             MaterialPageRoute(
                                    //                 builder: (context) => const Cart()));
                                    //       },
                                    //       style: const ButtonStyle(
                                    //           backgroundColor: MaterialStatePropertyAll(
                                    //               Color(0xff3EC1FF)),
                                    //           shape: MaterialStatePropertyAll(
                                    //               RoundedRectangleBorder(
                                    //                   borderRadius: BorderRadius.all(
                                    //                       Radius.circular(10))))),
                                    //       child: const Text(
                                    //         'Delete',
                                    //         style: TextStyle(
                                    //             color: Colors.white, fontSize: 15),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: TextButton(
                      onPressed: () {
                        final paymentInfo = InitialisePayment(
                            transactionId: (date + transactionId).toString(),
                            amount: Provider.of<UserProvider>(context,
                                    listen: false)
                                .getTotal()
                                .toDouble(),
                            email: "test@gmail.com",
                            productId: Provider.of<UserProvider>(context,
                                    listen: false)
                                .cartItems!
                                .items[0]
                                .itemName,
                            productDescription: "Grocery item",
                            currency: "INR",
                            applyConvenienceCharge: false);

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Cart()));
                        pay(context, paymentInfo);
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff3EC1FF)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))))),
                      child: const Text(
                        'Proceed to Payment',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
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
        actions: const [
          Icon(Icons.location_on_outlined),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Shop ID:'),
                Text(
                  'GB-THPR',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

  void pay(BuildContext context, paymentInfo) async {
    Xpay xpay = Xpay(context, publicKey, isLive: false);
    xpay.transact(paymentInfo, (transaction) async {
      debugPrint("result: ${transaction.toString()}");
      await addOrder(
          Provider.of<UserProvider>(context, listen: false).currentUser!.userId,
          MyOrder(
              items: Provider.of<UserProvider>(context, listen: false)
                  .cartItems!
                  .items,
              payableAmount: Provider.of<UserProvider>(context, listen: false)
                  .getTotal()
                  .toDouble(),
              paymentInfo: MyTransaction(
                  amount: transaction.amount,
                  transactionId: transaction.transactionId,
                  currency: transaction.currency,
                  statusCode: transaction.statusCode,
                  message: transaction.message,
                  isSuccessful: transaction.isSuccessful)));

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ExitQRPage()));
    }, (exception, transaction) {
      debugPrint("error: " + exception.message);
    });
  }

  Future<void> addOrder(String userId, MyOrder order) async {
    try {
      await FirebaseFirestore.instance.collection('orders').doc(userId).set({
        'orders': FieldValue.arrayUnion([order.toMap()]),
      });
      print('Order added successfully');
    } catch (e) {
      print('Error adding order: $e');
    }
  }
}
