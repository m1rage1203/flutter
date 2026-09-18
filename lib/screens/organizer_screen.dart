import 'package:flutter/material.dart';

class OrganizerScreen extends StatefulWidget {
  const OrganizerScreen({super.key});

  @override
  State<OrganizerScreen> createState() => _OrganizerScreenState();
}

class _OrganizerScreenState extends State<OrganizerScreen> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF6C63FF)),
          onPressed: () {},
        ),
        title: const Text(
          'Organizer',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Color(0xFF6C63FF)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          child: Column(
            children: [
              // Avatar
              const CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xFFE0E0E0),
                child: Icon(Icons.person, size: 60, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              const Text(
                'Albert Flores',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),

              // Stats Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  StatColumn(value: '2.368', label: 'Followers'),
                  VerticalDividerWidget(),
                  StatColumn(value: '346', label: 'Following'),
                  VerticalDividerWidget(),
                  StatColumn(value: '13', label: 'Events'),
                ],
              ),
              const SizedBox(height: 24),

              // Action Buttons Row
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.person_add, size: 18, color: Colors.white),
                      label: const Text('Follow', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6C63FF),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.chat_bubble_outline, size: 18, color: Color(0xFF6C63FF)),
                      label: const Text('Messages', style: TextStyle(color: Color(0xFF6C63FF), fontWeight: FontWeight.bold)),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFF6C63FF), width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Tabs Row (About, Events, Reviews)
              Row(
                children: [
                  Expanded(
                    child: TabButton(
                      title: 'About',
                      isSelected: _selectedTab == 0,
                      onTap: () => setState(() => _selectedTab = 0),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TabButton(
                      title: 'Events',
                      isSelected: _selectedTab == 1,
                      onTap: () => setState(() => _selectedTab = 1),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TabButton(
                      title: 'Reviews',
                      isSelected: _selectedTab == 2,
                      onTap: () => setState(() => _selectedTab = 2),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // About Content Section
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'About',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                    ),
                    TextSpan(
                      text: 'Read more...',
                      style: TextStyle(
                        color: Color(0xFF6C63FF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatColumn extends StatelessWidget {
  final String value;
  final String label;

  const StatColumn({super.key, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 1,
      color: Colors.grey.shade300,
      margin: const EdgeInsets.symmetric(horizontal: 24),
    );
  }
}

class TabButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const TabButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF6C63FF) : Colors.transparent,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: isSelected ? const Color(0xFF6C63FF) : Colors.grey.shade300,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
