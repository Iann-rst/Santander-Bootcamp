import 'package:diologin/model/card_detail.dart';

class CardDetailsRepository {
  Future<CardDetail> get() async {
    await Future.delayed(const Duration(seconds: 3));

    return CardDetail(
        1,
        "Meu Card",
        "https://hermes.digitalinnovation.one/assets/diome/logo.png",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo tellus leo, ac scelerisque tortor semper nec. Fusce sit amet elit nisi. Ut suscipit erat faucibus, ultricies diam vel, ullamcorper mauris. Aliquam vitae nisi at massa dictum lacinia vitae vitae tellus. Vivamus maximus quam elit, quis volutpat felis eleifend sit amet.");
  }
}
