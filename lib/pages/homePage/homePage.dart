import 'package:finapp/assets/api/api.dart';
import 'package:finapp/assets/theme/theme.dart';
import 'package:finapp/components/cards/cards.dart';
import 'package:finapp/components/spendCategories/spendCategoriesListHorizontal.dart';
import 'package:finapp/components/spendCategories/spendCategoriesListVertical.dart';
import 'package:finapp/models/CardData.dart';
import 'package:finapp/models/TransactionsData.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Api api = Api();

  Future<List<CardData>>? futureCard;
  // Future<Transactions>? futureTransactions;
  Future<void> _refresh() async {
    setState(() {
      futureCard = api.searchDashboard();

      api.transactions();
    });
  }

  @override
  void initState() {
    super.initState();

    setState(() {
      futureCard = api.searchDashboard();
      api.transactions();
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: const Text(
        "teste",
        style: TextStyle(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding,
        ),
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Kaio, Bem vindo novamente!",
                    style: TextStyle(
                        fontFamily: 'Publica Sans',
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: const Icon(
                    Icons.add_circle,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: defaultPadding, bottom: defaultPadding),
                  child: SizedBox(
                      height: width / 2.1,
                      child: FutureBuilder<List<CardData>>(
                          future: futureCard,
                          builder: (context, snapshot) {
                            var listCards = snapshot.data as List<CardData>;
                            if (snapshot.hasData) {
                              return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: listCards.length,
                                  itemBuilder: (context, index) {
                                    print(listCards[index].cardName);
                                    return creditCardWidget(
                                      context,
                                      listCards[index].cardNumber,
                                      listCards[index].cardName,
                                      listCards[index].expireDate,
                                      listCards[index].cardFlag,
                                      listCards[index].cardFlagLogo,
                                    );
                                  });
                            } else {
                              return CircularProgressIndicator();
                            }
                          })),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Total gasto",
                              style: TextStyle(
                                fontFamily: 'Publica Sans',
                                fontSize: 15,
                                color: Color(0xff4F4C50),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "R\$15000",
                              style: TextStyle(
                                  fontFamily: 'Publica Sans',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      cardSpendCategoryListHorizontal(
                        Icons.shopping_bag_outlined,
                        "Compras",
                        "158,50",
                      ),
                      cardSpendCategoryListHorizontal(
                        Icons.directions_car_outlined,
                        "Transporte",
                        "158,50",
                      ),
                      cardSpendCategoryListHorizontal(
                        Icons.directions_car_outlined,
                        "Transporte",
                        "158,50",
                      ),
                      cardSpendCategoryListHorizontal(
                        Icons.food_bank_outlined,
                        "Alimentação",
                        "158,50",
                      ),
                      cardSpendCategoryListHorizontal(
                        Icons.food_bank_outlined,
                        "Alimentação",
                        "158,50",
                      ),
                      cardSpendCategoryListHorizontal(
                        Icons.food_bank_outlined,
                        "Alimentação",
                        "158,50",
                      ),
                      cardSpendCategoryListHorizontal(
                        Icons.food_bank_outlined,
                        "Alimentação",
                        "158,50",
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    cardSpendCategoryCardslistHorizontal(
                      context,
                      Icons.shopping_bag,
                      "Doceria",
                      "16,00",
                    ),
                    cardSpendCategoryCardslistHorizontal(
                      context,
                      Icons.directions_car,
                      "Posto KLM",
                      "16,00",
                    ),
                    cardSpendCategoryCardslistHorizontal(
                      context,
                      Icons.shopping_bag,
                      "Doceria",
                      "16,00",
                    ),
                    cardSpendCategoryCardslistHorizontal(
                      context,
                      Icons.shopping_bag,
                      "Posto Ipiranga",
                      "99,00",
                    ),
                    cardSpendCategoryCardslistHorizontal(
                      context,
                      Icons.shopping_bag,
                      "Posto Ipiranga",
                      "99,00",
                    ),
                    cardSpendCategoryCardslistHorizontal(
                      context,
                      Icons.shopping_bag,
                      "Posto Ipiranga",
                      "99,00",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
