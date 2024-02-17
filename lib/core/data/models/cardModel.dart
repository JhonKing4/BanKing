
import 'package:banking/core/domain/entities/card.dart';

class CardModel {
  //Variables
  final String cardOwner;
  final String cardNumber;
  final String logo;
  final String cardDate;
  final int cvv;
//Constructor
  CardModel(
      {required this.cardOwner,
      required this.cardNumber,
      required this.cardDate,
      required this.logo,
      required this.cvv});

  factory CardModel.fromEntity(CardEntity card) {
    return CardModel(
        cardOwner: card.cardOwner,
        cardNumber: card.cardNumber,
        cardDate: card.cardDate,
        logo: card.logo,
        cvv: 0);
  }

  void getCvv() {}
}
