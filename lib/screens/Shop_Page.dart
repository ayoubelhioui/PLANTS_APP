import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  final String imagepath;
  const ShopPage({Key? key, required this.imagepath}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          // height: MediaQuery.of(context).size.height / 2,
          // width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  widget.imagepath,
                  fit: BoxFit.cover,
                ),
              ),
              InkWell(
                child: const Icon(Icons.arrow_back),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        )
      ]),
    );
  }
}
