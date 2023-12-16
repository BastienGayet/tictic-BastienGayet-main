import 'package:flutter/material.dart';

class CustomExpansionTileContent extends StatelessWidget {
  const CustomExpansionTileContent({
    Key? key,
    required this.date,
    required this.title,
    required this.amount,
    required this.color,
  }) : super(key: key);

  final String date;
  final String title;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(date),
            Text(title),
            Text(amount),
          ],
        ),
      ),
    );
  }
}
