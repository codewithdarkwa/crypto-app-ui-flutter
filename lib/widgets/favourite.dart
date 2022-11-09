import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({
    Key? key,
    this.logo,
    this.name,
    this.subname,
    this.price,
    this.percentage,
    required this.color,
  }) : super(key: key);

  final logo;
  final name;
  final subname;
  final price;
  final percentage;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  logo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(subname),
            ]),
          ],
        ),
        Column(
          children: [
            Text(price),
            Text(
              percentage,
              style: TextStyle(
                color: color,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
