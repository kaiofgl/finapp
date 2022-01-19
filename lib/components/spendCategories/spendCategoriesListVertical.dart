import 'package:flutter/material.dart';

Widget cardSpendCategoryCardslistHorizontal(
    BuildContext context, IconData icon, String local, String value) {
  double width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.only(top: 7.0),
    child: SizedBox(
      height: 50,
      width: width,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 50,
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
            child: Icon(icon, color: Colors.white),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      local,
                      style: const TextStyle(
                          fontFamily: 'Publica Sans',
                          fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      "Agora pouco",
                      style: TextStyle(
                          fontFamily: 'Publica Sans',
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 50,
            height: 50,
            child: Text(
              "R\$" + value,
              style: const TextStyle(
                  fontFamily: 'Publica Sans',
                  fontWeight: FontWeight.w300,
                  fontSize: 12),
            ),
          ),
        ],
      ),
    ),
  );
}
