import 'package:flutter/material.dart';

class MeditateScreen extends StatefulWidget {
  const MeditateScreen({super.key});

  @override
  State<MeditateScreen> createState() => _MeditateScreenState();
}

class _MeditateScreenState extends State<MeditateScreen> {
  int _selectedCategoryIndex = 0;
  final List<String> _categories = ['All', 'Bible In a Year', 'Dailies', 'Minutes', 'Novenas'];

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
                    const Text(
                      'Meditate',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.search, size: 28, color: Colors.black),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Category Chips
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categories.length,
                    itemBuilder: (context, index) {
                      final isSelected = _selectedCategoryIndex == index;
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ChoiceChip(
                          label: Text(_categories[index]),
                          selected: isSelected,
                          onSelected: (selected) {
                            setState(() {
                              _selectedCategoryIndex = index;
                            });
                          },
                          backgroundColor: const Color(0xFFEAF5F5),
                          selectedColor: const Color(0xFF03989E),
                          labelStyle: TextStyle(
                            color: isSelected ? Colors.white : const Color(0xFF03989E),
                            fontWeight: FontWeight.w600,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide.none,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),

                // Featured Card ("A Song of Moon")
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFD56F),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.wb_sunny, size: 64, color: Colors.orange.shade700),
                              const SizedBox(width: 12),
                              const Icon(Icons.nightlight_round, size: 56, color: Colors.indigo),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'A Song of Moon',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Start with the basics',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.favorite_border, size: 18, color: Colors.black54),
                                    SizedBox(width: 6),
                                    Text('9 Sessions', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w500)),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text('Start', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                    SizedBox(width: 4),
                                    Icon(Icons.arrow_forward_ios, size: 14, color: Colors.black),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Grid of 4 Cards
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.78,
                  children: const [
                    MeditationCard(
                      title: 'The Sleep Hour',
                      author: 'Ashna Mukherjee',
                      info: '3 Sessions',
                      bgColor: Color(0xFFFFB74D),
                      icon: Icons.nightlight_round,
                    ),
                    MeditationCard(
                      title: 'Easy on the Mission',
                      author: 'Peter Mach',
                      info: '5 minutes',
                      bgColor: Color(0xFFFFEE58),
                      icon: Icons.cloud,
                    ),
                    MeditationCard(
                      title: 'Relax with Me',
                      author: 'Amanda James',
                      info: '3 Sessions',
                      bgColor: Color(0xFF42A5F5),
                      icon: Icons.wb_sunny,
                    ),
                    MeditationCard(
                      title: 'Sun and Energy',
                      author: 'Micheal Hiu',
                      info: '5 minutes',
                      bgColor: Color(0xFF26A69A),
                      icon: Icons.wb_sunny_outlined,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MeditationCard extends StatelessWidget {
  final String title;
  final String author;
  final String info;
  final Color bgColor;
  final IconData icon;

  const MeditationCard({
    super.key,
    required this.title,
    required this.author,
    required this.info,
    required this.bgColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Center(
                child: Icon(icon, size: 48, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  author,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      info,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: const [
                        Text('Start', style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold)),
                        Icon(Icons.arrow_forward_ios, size: 10, color: Colors.black),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
