import 'package:flutter/material.dart';

class SubCategProducts extends StatelessWidget {
<<<<<<< HEAD
  final String mainCategName;
  final String subCategName;
  const SubCategProducts(
      {Key? key, required this.subCategName, required this.mainCategName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          subCategName,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text(mainCategName),
      ),
    );
=======
  const SubCategProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
>>>>>>> cf2bd5c1a91a65f3c7aeee2bfde4eb6a75cf04f3
  }
}
