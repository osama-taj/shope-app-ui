import 'package:flutter/material.dart';

import 'ProductDetels.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final List<String> product;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: false,
      children: [
        Container(
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Cart",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Below are the item in your cart .",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 16,
              ),
              ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: product.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        print("tap tap");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetels()));
                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(76, 172, 171, 169),
                              // border: Border.all(width: 0.5),
                              borderRadius: BorderRadius.circular(20.0)),
                          height: 110,
                          width: 170,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Image.asset(
                                "images/" + product[index],
                                width: 100,
                                height: 100,
                                //fit: BoxFit.fill,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Flat Boots .",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  Text(
                                    "\$200",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  Text(
                                    "Quanity : 1",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.edit),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.delete_forever,
                                  color: Colors.red,
                                ),
                              )
                            ],
                          )),
                    );
                  }),
              SizedBox(
                height: 8,
              ),
              Text(
                "Price Breakdown",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Base Price",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    "\$1400",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Taxes",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    "\$100",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "sheping/delivery",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    "\$20",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 173, 70, 63)),
                  ),
                  Text("\$1520",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 173, 70, 63)))
                ],
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                padding: EdgeInsets.all(16),
                width: double.infinity,
                height: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Order"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red)),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
