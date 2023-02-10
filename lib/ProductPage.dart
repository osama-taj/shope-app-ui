import 'package:flutter/material.dart';

import 'ProductDetels.dart';

class productpage extends StatelessWidget {
  const productpage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final List<String> product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Text(
            "Search By Product",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 8,
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
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                itemCount: product.length,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetels()));
                    },
                    child: Container(
                        padding: EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                            color: //Color.fromARGB(255, 243, 232, 232)
                                Color.fromARGB(76, 172, 171, 169),
                            image: DecorationImage(
                                image: AssetImage("images/" + product[index]),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20.0)),
                        height: 400,
                        width: 400,
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "NIKE",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(221, 92, 10, 10)),
                            ),
                            Text(
                              "\$200",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(221, 92, 10, 10)),
                            ),
                          ],
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}
