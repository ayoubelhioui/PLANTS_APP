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
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    widget.imagepath,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  child: const Icon(
                    Icons.arrow_back,
                    size: 35,
                  ),
                  onTap: () => Navigator.pop(context),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding
            children: [
            Row(children: const [
              Text(
                'Indoor',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 50, 90, 62),
                ),
              )
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  'Plant Jasmine',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 50, 90, 62),
                  ),
                ),
              ],
            )
          ]),
        ],
      ),
    );
  }
}
