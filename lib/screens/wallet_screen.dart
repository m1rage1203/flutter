import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.bolt, color: Colors.white, size: 20),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'My E-Wallet',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.search, color: Colors.black),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.more_horiz, color: Colors.black),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Bank Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E2022),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Andrew Ainsley',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: const [
                              Text(
                                'VISA',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 8),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.red,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        '•••• •••• •••• 3629',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          letterSpacing: 2.0,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Your balance',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '\$9,379',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_downward, size: 16, color: Colors.black),
                            label: const Text(
                              'Top Up',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),

                // Transaction History Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Transaction History',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          color: Color(0xFF0A8F9B),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Transaction List
                const TransactionItem(
                  title: 'Lawson Chair',
                  subtitle: 'Dec 15, 2024 | 10:00 AM',
                  amount: '-\$120',
                  status: 'Orders',
                  isTopUp: false,
                  iconData: Icons.chair,
                ),
                const TransactionItem(
                  title: 'Top Up Wallet',
                  subtitle: 'Dec 14, 2024 | 16:42 PM',
                  amount: '+\$400',
                  status: 'Top Up',
                  isTopUp: true,
                  iconData: Icons.account_balance_wallet,
                ),
                const TransactionItem(
                  title: 'Parabolic Reflector',
                  subtitle: 'Dec 14, 2024 | 11:39 AM',
                  amount: '-\$170',
                  status: 'Orders',
                  isTopUp: false,
                  iconData: Icons.light,
                ),
                const TransactionItem(
                  title: 'Mini Wooden Table',
                  subtitle: 'Dec 13, 2024 | 14:46 PM',
                  amount: '-\$165',
                  status: 'Orders',
                  isTopUp: false,
                  iconData: Icons.table_restaurant,
                ),
                const TransactionItem(
                  title: 'Top Up Wallet',
                  subtitle: 'Dec 12, 2024 | 09:27 AM',
                  amount: '+\$300',
                  status: 'Top Up',
                  isTopUp: true,
                  iconData: Icons.account_balance_wallet,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final String status;
  final bool isTopUp;
  final IconData iconData;

  const TransactionItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.status,
    required this.isTopUp,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: const Color(0xFFF0F3F4),
            child: Icon(iconData, color: Colors.black, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isTopUp ? Colors.green : Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    status,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    isTopUp ? Icons.arrow_downward : Icons.arrow_upward,
                    size: 12,
                    color: isTopUp ? Colors.blue : Colors.red,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
