import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:plants_app/Recent_Viewed_Widget.dart';
import 'package:plants_app/screens/Shop_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home Screen'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                color: Color.fromARGB(255, 50, 90, 62),
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Color.fromARGB(255, 50, 90, 62),
              ),
              label: 'Profile')
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                  child: Image.asset('assets/images/MyPicture.png'),
                ),
                const SizedBox(width: 15),
                const Icon(Icons.menu_rounded,
                    size: 30, color: Colors.blueGrey),
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
            const SizedBox(height: 30),
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
              hintText: 'Search For `Plants',
              hintStyle: TextStyle(color: Colors.blueGrey),
            )),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Recomended',
                    style: TextStyle(
                        color: Color.fromARGB(255, 50, 90, 62),
                        fontWeight: FontWeight.bold,
                        fontSize: 19)),
                Text('Top',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 19)),
                Text('Indoor',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 19)),
                Text('outdoor',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 19)),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ShopPage(
                              imagepath:
                                  'assets/images/First_Recent_Viewed.jpg'),
                        ),
                      )),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13.0),
                    child: Image.asset(
                      'assets/images/First_Recent_Viewed.jpg',
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/images/Third_Recent_Viewed.png',
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(13.0),
                  child: Image.asset(
                    'assets/images/Fifth_Recent_Viewed.png',
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/images/Fourth_Recent_Viewed.png',
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     SizedBox(
            //       child: Image.asset(
            //         'assets/images/Fourth_Recent_Viewed.png',
            //         width: MediaQuery.of(context).size.width / 2 - 40,
            //         height: 200,
            //       ),
            //     ),
            //     SizedBox(
            //       child: Image.asset(
            //         'assets/images/Fifth_Recent_Viewed.png',
            //         width: MediaQuery.of(context).size.width / 2 - 40,
            //         height: 200,
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 7),
            Row(
              children: const [
                Text(
                  'Recent Viewed',
                  style: TextStyle(
                      fontSize: 19,
                      color: Color.fromARGB(255, 50, 90, 62),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 20),
            const RecentWiewed(),
            // const SizedBox(height: 15),
            // const Text(
            //   'Your feedback matters',
            //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 14),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Icon(Icons.star, color: Colors.yellow.shade700),
            //     Icon(Icons.star, color: Colors.yellow.shade700),
            //     Icon(Icons.star, color: Colors.yellow.shade700),
            //     Icon(Icons.star_outline, color: Colors.yellow.shade700),
            //     Icon(Icons.star_outline, color: Colors.yellow.shade700),
            //   ],
            // )
          ]),
        ),
      ),
    );
  }
}
