import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'Auth/LoginPage.dart';
import 'CartPage.dart';
import 'HomePage.dart';
import 'ProductPage.dart';
import 'SettingPage.dart';

void main() {
  runApp(MediaQuery(data: new MediaQueryData(), child: start()));
}

class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  int _currentIndex = 0;
  PageController _pageController = new PageController();
  List<String> picname = [
    "adid2.jpg",
    "nikelogo.jpg",
    "pumalogo.jpg",
  ];
  List<String> company = [
    "nikelogo2.png",
    "pumalogo2.png",
    "adidaslogo2.png",
    "nikelogo2.png",
    "pumalogo2.png",
    "adidaslogo2.png",
    "nikelogo2.png",
    "pumalogo2.png",
    "adidaslogo2.png"
  ];
  List<String> product = [
    "pic2.png",
    "pic3.png",
    "pic3.png",
    "pic4.png",
    "pic5.png",
    "pic7.png",
    "pic8.png",
  ];
  var Msize, Mheight, Mwidth;
  @override
  Widget build(BuildContext context) {
    Msize = MediaQuery.of(context).size;
    Mheight = Msize.height;
    Mwidth = Msize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              SafeArea(
                  child: homepage(
                      picname: picname, product: product, company: company)),
              //////////////////////////////////////////////////
              SafeArea(child: productpage(product: product)),
              //////////////////////////////////////////////////
              SafeArea(child: CartPage(product: product)),
              ///////////////////////////////////////////////////
              LoginPage()
              // SafeArea(child: SettingPage(Mwidth: Mwidth))
              /////////////////////////////////////////////////////
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                activeColor: Color.fromARGB(255, 212, 50, 50),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.red),
                ),
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                )),
            BottomNavyBarItem(
                activeColor: Color.fromARGB(255, 212, 50, 50),
                title: Text('product'),
                icon: Icon(
                  Icons.apps,
                  color: Colors.red,
                )),
            BottomNavyBarItem(
                activeColor: Color.fromARGB(255, 212, 50, 50),
                title: Text('cart'),
                icon: Icon(
                  Icons.add_shopping_cart_rounded,
                  color: Colors.red,
                )),
            BottomNavyBarItem(
                activeColor: Color.fromARGB(255, 212, 50, 50),
                title: Text('setting'),
                icon: Icon(
                  Icons.settings,
                  color: Colors.red,
                )),
          ],
        ),

        //SafeArea(child: homepage(picname: picname, product: product)),
      ),
    );
  }
}
