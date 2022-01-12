import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white.withOpacity(.1)),
      child: const TextField(
        cursorColor: Color(0xFFFCA311),
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            hintStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 14),
            hintText: "Rechercher"),
      ),
    );
  }
}
