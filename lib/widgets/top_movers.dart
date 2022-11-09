import 'package:flutter/material.dart';

class TopMovers extends StatelessWidget {
  const TopMovers({
    Key? key,
    this.logo,
    this.name,
    this.percentage,
    required this.color,
    required this.background,
  }) : super(key: key);

  final logo;
  final name;
  final percentage;
  final Color color;
  final Color background;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 160,
            height: 120,
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset(logo),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '$name  \$0.98',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    percentage,
                    style: TextStyle(
                      color: color,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
