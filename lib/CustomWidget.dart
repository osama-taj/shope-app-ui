import 'package:flutter/material.dart';

Container mycustomTextFormField(
    String hint,
    bool state,
    IconData icon,
    TextEditingController textcontroller,
    String? Function(String?) textvalidate) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    child: TextFormField(
      validator: textvalidate,
      obscureText: state,
      cursorColor: Colors.red,
      textAlign: TextAlign.justify,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.red),
            borderRadius: BorderRadius.circular(15.0),
          ),
          filled: true,
          fillColor: Color.fromARGB(90, 255, 255, 255),
          labelText: hint,
          labelStyle: TextStyle(
            color: Colors.red,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.red),
          suffixIcon: Icon(icon, color: Colors.red),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.red),
            borderRadius: BorderRadius.circular(15.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.red),
            borderRadius: BorderRadius.circular(15.0),
          )),
    ),
  );
}
