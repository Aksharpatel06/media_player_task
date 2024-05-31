import 'package:flutter/material.dart';

Container feed_message() {
  return Container(
    height: 120,
    width: double.infinity,
    padding: EdgeInsets.all(12),
    decoration: const BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Feed',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Get inspired daily with a diverse collection of quotes that uplift, motivate, and enlighten.',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    ),
  );
}
