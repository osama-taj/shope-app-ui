import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({
    Key? key,
    required this.picname,
    required this.product,
    required this.company,
  }) : super(key: key);

  final List<String> picname;
  final List<String> product;
  final List<String> company;

  @override
  Widget build(BuildContext context) {
    var Msize, Mheight, Mwidth;
    Msize = MediaQuery.of(context).size;
    Mheight = Msize.height;
    Mwidth = Msize.width;
    return SingleChildScrollView(
      child: Container(
        //color: Color.fromARGB(76, 172, 171, 169),
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/shoelogo.png"),
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(90, 184, 165, 184).withOpacity(0.5),
                    spreadRadius: 5, // spread radius
                    blurRadius: 10,
                    offset: const Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 0),
              child: TextFormField(
                cursorColor: Colors.red,
                textAlign: TextAlign.justify,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color:
                              Color.fromARGB(90, 184, 165, 184)), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(90, 255, 255, 255),
                    hintText: "search",
                    hintStyle: const TextStyle(color: Colors.red),
                    suffixIcon: const Icon(Icons.search, color: Colors.red),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(90, 184, 165, 184),
                        ))),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 29, 0, 0),
              height: 200,
              width: Mwidth,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
              child: Stack(
                children: [
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: picname.map((pic) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/" + pic),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20.0)),
                        height: 400,
                        width: 400,
                        alignment: Alignment.center,
                      );
                    }).toList(),
                  ),
                  Positioned(
                      bottom: 15,
                      left: Mwidth * 0.50,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100)),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exclusive Offer .",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                  InkWell(
                    child: Text("see all",
                        style: TextStyle(
                            color: Color.fromARGB(255, 212, 50, 50),
                            fontWeight: FontWeight.normal,
                            fontSize: 15)),
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(20.0)),
                        height: 300,
                        width: 170,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "images/" + product[index],
                              width: double.infinity,
                              height: 130,
                              //fit: BoxFit.fill,
                            ),
                            const Text(
                              "niake flat shoe",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              "black , wite , red",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Colors.black87,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "\$200",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                const Text(
                                  "\$400",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromARGB(90, 226, 152, 152)
                                                  .withOpacity(0.5),
                                          spreadRadius: 1, // spread radius
                                          blurRadius: 5,
                                          offset: const Offset(0,
                                              10), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.red,
                                      // border: Border.all(width: 0.5),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                      color: Colors.white,
                                      onPressed: () {},
                                      icon: Icon(Icons.add)),
                                )
                              ],
                            )
                          ],
                        ));
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Best Selling ",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                  InkWell(
                    child: Text("see all",
                        style: TextStyle(
                            color: Color.fromARGB(255, 212, 50, 50),
                            fontWeight: FontWeight.normal,
                            fontSize: 15)),
                  )
                ],
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(20.0)),
                        height: 300,
                        width: 170,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "images/" + product[index],
                              width: double.infinity,
                              height: 130,
                              //fit: BoxFit.fill,
                            ),
                            const Text(
                              "niake flat shoe",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              "black , wite , red",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Colors.black87,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "\$200",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                const Text(
                                  "\$400",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromARGB(90, 226, 152, 152)
                                                  .withOpacity(0.5),
                                          spreadRadius: 1, // spread radius
                                          blurRadius: 5,
                                          offset: const Offset(0,
                                              10), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.red,
                                      // border: Border.all(width: 0.5),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: IconButton(
                                      color: Colors.white,
                                      onPressed: () {},
                                      icon: Icon(Icons.add)),
                                )
                              ],
                            )
                          ],
                        ));
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Company ",
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                  InkWell(
                    child: Text("see all",
                        style: TextStyle(
                            color: Color.fromARGB(255, 212, 50, 50),
                            fontWeight: FontWeight.normal,
                            fontSize: 15)),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: company.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5),
                            borderRadius: BorderRadius.circular(20.0)),
                        height: 300,
                        width: 170,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "images/" + company[index],
                              width: 150,
                              height: 150,
                              //fit: BoxFit.fill,
                            ),
                          ],
                        ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
