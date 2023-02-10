import 'package:flutter/material.dart';

class ProductDetels extends StatefulWidget {
  const ProductDetels({super.key});

  @override
  State<ProductDetels> createState() => _ProductDetelsState();
}

class _ProductDetelsState extends State<ProductDetels> {
  int quantity = 0;
  var Msize, Mheight, Mwidth;
  int selectedSized = 0;
  List<int> size = [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
  @override
  Widget build(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Yay! A SnackBar!'),
    );
    Msize = MediaQuery.of(context).size;
    Mheight = Msize.height;
    Mwidth = Msize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
            child: ListView(
          children: [
            Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_rounded),
                        ),
                        IconButton(
                            onPressed: () {
                              print("favorit");
                            },
                            icon: Icon(Icons.favorite_border_rounded))
                      ],
                    ),
                    Container(
                      width: Mwidth,
                      height: Mheight * 0.33,
                      margin: EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(76, 172, 171, 169),
                          // border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.asset("images/pic8.png"),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Flat Boots .",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic),
                        ),
                        const Text(
                          "\$200",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Running can be as much about comfort as it is about style. These adidas running-inspired shoes have a sculpted Cloudfoam midsole that provides pillow-soft comfort. A knit upper and a bold adidas logo complete the look.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    const Text(
                      "Size.",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: size.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                print(size[index]);
                                selectedSized = size[index];
                                setState(() {});
                              },
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      color: selectedSized == size[index]
                                          ? Colors.red
                                          : Colors.white,
                                      border: Border.all(width: 0.5),
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${size[index]}",
                                    style: TextStyle(
                                      color: selectedSized == size[index]
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  )),
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              quantity != 0 ? quantity-- : quantity;
                              setState(() {});
                            },
                            icon: Icon(Icons.minimize_rounded)),
                        Text("$quantity"),
                        IconButton(
                            onPressed: () {
                              quantity++;
                              setState(() {});
                            },
                            icon: Icon(Icons.add))
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      padding: EdgeInsets.all(16),
                      width: double.infinity,
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          onPressed: () {
                            print("adddd");
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            print("after adddd");
                          },
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red)),
                        ),
                      ),
                    )
                  ],
                )),
          ],
        )),
      ),
    );
  }
}
