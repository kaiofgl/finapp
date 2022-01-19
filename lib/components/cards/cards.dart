import 'package:finapp/assets/theme/theme.dart';
import 'package:flutter/material.dart';

Widget creditCardWidget(
    BuildContext context,
    String? cardNumber,
    String? cardName,
    String? expireDate,
    String? cardFlag,
    String? cardFlagLogo) {
  double widthSize = MediaQuery.of(context).size.width;
  // Api api = new Api();
  // api.searchDashboard();
  return RotatedBox(
    quarterTurns: 4,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: widthSize - widthSize / 4,
        height: widthSize / 2.1,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xffF5A8FB),
                Color(0xffE5BCE5),
              ]),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: widthSize / 5,
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    cardNumber.toString(),
                    style: const TextStyle(
                      fontFamily: 'Publica Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: defaultPadding),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                "CARD HOLDER",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Publica Sans',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                cardName.toString(),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Publica Sans',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.network(cardFlagLogo.toString()),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
