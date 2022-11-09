import 'package:flutter/material.dart';

import '../widgets/favourite.dart';
import '../widgets/top_movers.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          children: const [
            Text(
              'Good Morning',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            Text(
              'Favour',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.notifications, color: Colors.black, size: 30),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Favourite',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          const Favourite(
            logo: 'assets/bitcoin.png',
            name: 'BTC',
            subname: 'Bitcoin',
            price: '\$35787.52',
            percentage: '-6.2%',
            color: Colors.red,
          ),
          const Favourite(
            logo: 'assets/usdt.png',
            name: 'USDT',
            subname: 'TetherUS',
            price: '\$0.99993',
            percentage: '+2.24',
            color: Colors.green,
          ),
          const Favourite(
            logo: 'assets/Eth.png',
            name: 'ETH',
            subname: 'Etherium',
            price: '\$2532.84',
            percentage: '-1.52%',
            color: Colors.red,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Top Movers',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                    ),
                  ),
                ),
              ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TopMovers(
                logo: 'assets/bnb.png',
                name: 'BNB',
                percentage: '16.8%',
                color: Colors.red,
                background: Color(0xfffff2f1),
              ),
              TopMovers(
                logo: 'assets/xrp.png',
                name: 'XRP',
                percentage: '+2.8%',
                color: Colors.green,
                background: Color(0xffeaf9f2),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Gainers Losers',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          const Favourite(
            logo: 'assets/bitcoin.png',
            name: 'BTC',
            subname: 'Bitcoin',
            price: '\$35787.52',
            percentage: '-6.2%',
            color: Colors.red,
          ),
          const Favourite(
            logo: 'assets/usdt.png',
            name: 'USDT',
            subname: 'TetherUS',
            price: '\$0.99993',
            percentage: '+2.24',
            color: Colors.green,
          ),
          const Favourite(
            logo: 'assets/Eth.png',
            name: 'ETH',
            subname: 'Etherium',
            price: '\$2532.84',
            percentage: '-1.52%',
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
