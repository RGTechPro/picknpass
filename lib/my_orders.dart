import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:picknpass/provider/user_provider.dart';
import 'package:provider/provider.dart';
import 'pages/models/cartModel.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3EC1FF),
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/Menu.svg'),
          onPressed: () {
            //  myKey.currentState!.openDrawer();
          },
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
      body: FutureBuilder<DocumentSnapshot>(
        future: fetchOrders(Provider.of<UserProvider>(context, listen: false)
            .currentUser!
            .userId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text('No orders'));
          } else {
            // Use the data from the snapshot to display orders
            final data = snapshot.data!;

            final orders =
                data['orders'].map((order) => MyOrder.fromMap(order)).toList();
            Provider.of<UserProvider>(context, listen: false)
                .setOrderData(orders);
            return ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: const Offset(0, .5),
                              spreadRadius: .1,
                              blurRadius: 3),
                        ],
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        border:
                            Border.all(color: Colors.grey.withOpacity(.01))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //  FaIcon(FontAwesomeIcons.home, color: getColor(orderStatus)),

                              // OutlinedButton(
                              //     style: ButtonStyle(
                              //         side: MaterialStateProperty.all(
                              //             BorderSide(color: Colors.redAccent))),
                              //     onPressed: () {
                              //       // Provider.of<OrdersList>(context, listen: false)
                              //       //     .moreDetailsIndex = index;
                              //       // Navigator.push(
                              //       //     context,
                              //       //     MaterialPageRoute(
                              //       //         builder: (context) => OrderDetail()));
                              //     },
                              //     // child: Text(
                              //     //   'More Details',
                              //     //   style: kMessageText.copyWith(color: Colors.redAccent),
                              //     // )
                              //     )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Order Id:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "# ${index + 1}",
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Order Amount:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "₹ ${orders[index].payableAmount.toString()}",
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Transaction Id:',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "# ${orders[index].paymentInfo.transactionId}",
                                style: const TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${orders[index].items[0].itemName} and others',
                            style: const TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> fetchOrders(
      String userId) async {
    return await FirebaseFirestore.instance
        .collection('orders')
        .doc(userId)
        .get();
  }
}
