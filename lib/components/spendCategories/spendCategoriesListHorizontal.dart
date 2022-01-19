import 'package:flutter/material.dart';

Widget cardSpendCategoryListHorizontal(
    IconData icon, String type, String value) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 90,
      width: 260,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff1B1A1D),
              Color(0xff2C282E),
            ]),
        borderRadius: BorderRadius.circular(15),
        color: Colors.red,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Icon(
              icon,
              color: Colors.white,
              size: 60,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                type,
                style: const TextStyle(
                  fontFamily: 'Publica Sans',
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "R\$" + value.toString(),
                style: const TextStyle(
                    fontFamily: 'Publica Sans',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xff5D5C5E)),
              )
            ],
          )
        ],
      ),
    ),
  );
}
