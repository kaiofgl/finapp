class Transactions {
  final String? totalSpent;

  Transactions({this.totalSpent});

  factory Transactions.fromJson(Map<String, dynamic> json) {
    return Transactions(
      totalSpent: json['total_spent'] ?? 0,
    );
  }
}
