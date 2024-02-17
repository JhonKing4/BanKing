class CardEntity {
//Variables
  final String cardOwner;
  final String cardNumber;
  final String logo;
  final String cardDate;

//Constructor
  CardEntity(
      {required this.cardOwner,
      required this.cardNumber,
      required this.cardDate,
      required this.logo});
}
