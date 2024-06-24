import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Stays'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryCard(
                    title: 'Bachelor',
                    icon: Icons.person,
                    onPressed: () {
                      // Navigate to Bachelor category page or perform action
                      print('Bachelor category selected');
                    },
                  ),
                  CategoryCard(
                    title: 'Family',
                    icon: Icons.family_restroom,
                    onPressed: () {
                      // Navigate to Family category page or perform action
                      print('Family category selected');
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CategoryCard(
              title: 'Sublet',
              icon: Icons.home,
              onPressed: () {
                // Navigate to Sublet category page or perform action
                print('Sublet category selected');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  const CategoryCard({
    required this.title,
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
