import 'package:flutter/material.dart';

class RecentWiewed extends StatelessWidget {
  const RecentWiewed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset('assets/images/First_Recent_Viewed.png'),
          Image.asset('assets/images/Second_Recent_Viewed.png'),
          Image.asset('assets/images/Third_Recent_Viewed.png'),
          Image.asset('assets/images/Fourth_Recent_Viewed.png'),
          Image.asset('assets/images/Fifth_Recent_Viewed.png'),
        ],
      ),
    );
  }
}
