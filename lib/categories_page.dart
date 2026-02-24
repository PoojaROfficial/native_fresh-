import 'package:flutter/material.dart';
import 'product_details_page.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  static const List<Map<String, String>> categoriesData = [
    {
      "title": "Frozen Food & Ice Creams",
      "image": "assets/icecream_sunday.png",
    },
    {"title": "Sweet Cravings", "image": "assets/chocolate.png"},
    {"title": "Cold Drinks & Juices", "image": "assets/pepsi.png"},
    {"title": "Munchies", "image": "assets/lays_extracheesy.png"},
    {
      "title": "Frozen Food & Ice Creams",
      "image": "assets/icecream_sunday.png",
    },
    {"title": "Sweet Cravings", "image": "assets/chocolate.png"},
    {"title": "Cold Drinks & Juices", "image": "assets/pepsi.png"},
    {"title": "Munchies", "image": "assets/lays_extracheesy.png"},
    {
      "title": "Frozen Food & Ice Creams",
      "image": "assets/icecream_sunday.png",
    },
    {"title": "Sweet Cravings", "image": "assets/chocolate.png"},
    {"title": "Cold Drinks & Juices", "image": "assets/pepsi.png"},
    {"title": "Munchies", "image": "assets/lays_extracheesy.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "All Categories",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// 📢 Top Banner Placeholder
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFE6F0C5).withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(height: 20),

            /// 🔹 Large Categories Row
            Row(
              children: [
                /// Large Category 1
                Expanded(
                  child: Container(
                    height: 120,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE6F0C5).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Fruits & Vegetables",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1B5E20),
                          ),
                        ),
                        const Spacer(),
                        Center(
                          child: Image.asset(
                            "assets/fruits_vegetables.png",
                            height: 60,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(
                                  Icons.category,
                                  size: 40,
                                  color: Colors.green,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15),

                /// Large Category 2
                Expanded(
                  child: Container(
                    height: 120,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE6F0C5).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Dairy, Bread & Eggs",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1B5E20),
                          ),
                        ),
                        const Spacer(),
                        Center(
                          child: Image.asset(
                            "assets/bread_eggs.png",
                            height: 60,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(
                                  Icons.category,
                                  size: 40,
                                  color: Colors.green,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            /// 🔹 Categories Grid
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: categoriesData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final category = categoriesData[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductDetailsPage(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFE6F0C5).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          category["title"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1B5E20),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Expanded(
                          child: Image.asset(
                            category["image"]!,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(
                                  Icons.fastfood_outlined,
                                  size: 20,
                                  color: Colors.green,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
