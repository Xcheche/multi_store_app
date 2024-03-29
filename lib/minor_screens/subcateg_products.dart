import 'package:flutter/material.dart';

class SubCategProducts extends StatelessWidget {
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
  }
}
