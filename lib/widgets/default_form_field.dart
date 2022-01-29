import 'package:flutter/material.dart';

Widget defaultFormText(
        {required TextEditingController control,
        required TextInputType type,
        required dynamic validator,
        bool isPassword = false,
        required String label,
        r}) =>
    Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 5,
      ),
      child: TextFormField(
        autofocus: true,
        controller: control,
        keyboardType: type,
        validator: validator,
        decoration: InputDecoration(
            filled: true,
            hintStyle: const TextStyle(color: Colors.grey),
            border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none),
            hintText: label),
      ),
    );
