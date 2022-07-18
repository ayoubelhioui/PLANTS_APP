import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const Icon(Icons.menu_rounded,
                    size: 30, color: Colors.blueGrey),
                const SizedBox(width: 15),
                SizedBox(
                  width: 30,
                  child: Image.asset('assets/images/MyPicture.png'),
                )
              ]),
              const Icon(
                Icons.shop,
                color: Colors.blueGrey,
              ),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          const Text(
            'Let\'s find',
            style: TextStyle(
              fontFamily: 'Breadbary',
              color: Color.fromARGB(255, 50, 90, 62),
              fontSize: 35,
            ),
          ),
          const Text(
            'Your Plants!',
            style: TextStyle(
              fontFamily: 'Breadbary',
              color: Color.fromARGB(255, 50, 90, 62),
              fontSize: 35,
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
              decoration: const InputDecoration(
            // focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            filled: true,
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(
              Icons.mic_none_outlined,
              color: Color.fromARGB(255, 15, 15, 15),
            ),
            hintText: 'Search Plants',
            hintStyle: TextStyle(color: Colors.blueGrey),
          )),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              InkWell(
                  child: Text('Recomended',
                      style: TextStyle(color: Colors.blueGrey))),
              Text('Top', style: TextStyle(color: Colors.blueGrey)),
              Text('Indoor', style: TextStyle(color: Colors.blueGrey)),
              Text('outdoor', style: TextStyle(color: Colors.blueGrey)),
            ],
          )
        ]),
      ),
    );
  }
}
