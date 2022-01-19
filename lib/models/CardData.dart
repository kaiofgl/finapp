class CardData {
  final String? cardNumber;
  final String? cardName;
  final String? expireDate;
  final String? cardFlag;
  final String? cardFlagLogo;

  CardData(
      {this.cardNumber,
      this.cardName,
      this.expireDate,
      this.cardFlag,
      this.cardFlagLogo});

  factory CardData.fromJson(Map<String, dynamic> json) {
    return CardData(
      cardNumber: json['card_number'],
      cardName: json['card_name'],
      expireDate: json['expire_date'],
      cardFlag: json['card_flag'],
      cardFlagLogo: json['card_flag_logo'],
    );
  }
}
