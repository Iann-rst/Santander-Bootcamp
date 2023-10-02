import 'package:diologin/pages/card_details.dart';
import 'package:flutter/material.dart';

import '../model/card_detail.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  var cardDetail = CardDetail(
      1,
      "Meu Card",
      "https://hermes.digitalinnovation.one/assets/diome/logo.png",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo tellus leo, ac scelerisque tortor semper nec. Fusce sit amet elit nisi. Ut suscipit erat faucibus, ultricies diam vel, ullamcorper mauris. Aliquam vitae nisi at massa dictum lacinia vitae vitae tellus. Vivamus maximus quam elit, quis volutpat felis eleifend sit amet.");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          child: InkWell(
            child: Hero(
              tag: cardDetail.id,
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                shadowColor: Colors.grey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            cardDetail.url,
                            height: 20,
                          ),
                          Text(
                            cardDetail.title,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        cardDetail.text,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        alignment: Alignment.centerRight,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Ler mais",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardDetailsPage(
                    cardDetails: cardDetail,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
