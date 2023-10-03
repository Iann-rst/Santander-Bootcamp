import 'package:flutter/material.dart';

import '../model/card_detail.dart';

class CardDetailsPage extends StatelessWidget {
  final CardDetail cardDetails;

  const CardDetailsPage({super.key, required this.cardDetails});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: cardDetails.id,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.network(
                      cardDetails.url,
                      height: 90,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    cardDetails.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Text(
                    cardDetails.text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
