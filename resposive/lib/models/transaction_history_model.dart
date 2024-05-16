class TransactionHistoryModel {
  final String title;
  final String subTitle;
  final String amount;
  final bool isOff;

  const TransactionHistoryModel(
      {required this.title,
      required this.subTitle,
      required this.amount,
      required this.isOff});
}
