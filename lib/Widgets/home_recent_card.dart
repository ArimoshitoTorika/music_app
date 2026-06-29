import 'package:flutter/material.dart';
class HomeRecentCard extends StatelessWidget {
  final String cardImage;
  final String cardTitle;

  const HomeRecentCard({super.key, required this.cardImage, required this.cardTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.grey.withAlpha(50),
      ),
      width: 185,
      height: 60,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(cardImage),
          ),
          SizedBox(width: 10),
          Text(
            cardTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight(500),
            ),
          ),
        ],
      ),
    );
  }
}
