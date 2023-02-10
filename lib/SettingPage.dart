import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({
    Key? key,
    required this.Mwidth,
  }) : super(key: key);

  final Mwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          Center(
              child: Text(
            "Setting",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          )),
          SizedBox(
            height: 16,
          ),
          Text(
            "Ail Mohammed",
            style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic),
          ),
          Text(
            "776655443",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
          Container(
            width: Mwidth,
            height: 2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 16,
          ),
          const Text(
            "Account",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
          LebalSetting("Edite Profile", Icons.person_pin),
          LebalSetting("Orders", Icons.apps_sharp),
          LebalSetting("Delivery Address", Icons.location_on_outlined),
          LebalSetting("Edite Profile", Icons.person_pin),
          SizedBox(
            height: 16,
          ),
          const Text(
            "General",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
          LebalSetting("support", Icons.contact_support_outlined),
          LebalSetting("Terms of service", Icons.beenhere_sharp),
        ],
      ),
    );
  }

  Column LebalSetting(String lebal, IconData icon) {
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(90, 78, 70, 70).withOpacity(0.5),
                  spreadRadius: -10, // spread radius
                  blurRadius: 20,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    lebal,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 30,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
