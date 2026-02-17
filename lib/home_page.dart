import 'package:flutter/material.dart';

final List<Map<String, String>> smallCategories = [
  {"title": "Frozen Food\n& Ice Creams", "image": "assets/icecream.png"},
  {"title": "Sweet\nCravings", "image": "assets/chocolate.png"},
  {"title": "Cold Drinks\n& Juices", "image": "assets/pepsi.png"},
  {"title": "Munchies", "image": "assets/lays_extracheesy.png"},
  // second
  {"title": "Frozen Food\n& Ice Creams", "image": "assets/icecream.png"},
  {"title": "Sweet\nCravings", "image": "assets/chocolate.png"},
  {"title": "Cold Drinks\n& Juices", "image": "assets/pepsi.png"},
  {"title": "Munchies", "image": "assets/lays_extracheesy.png"},
  // second
  {"title": "Frozen Food\n& Ice Creams", "image": "assets/icecream.png"},
  {"title": "Sweet\nCravings", "image": "assets/chocolate.png"},
  {"title": "Cold Drinks\n& Juices", "image": "assets/pepsi.png"},
  {"title": "Munchies", "image": "assets/lays_extracheesy.png"},
  // second
  {"title": "Frozen Food\n& Ice Creams", "image": "assets/icecream.png"},
  {"title": "Sweet\nCravings", "image": "assets/chocolate.png"},
  {"title": "Cold Drinks\n& Juices", "image": "assets/pepsi.png"},
  {"title": "Munchies", "image": "assets/lays_extracheesy.png"},

  // {"title": "Bakery", "image": "assets/bread.png"},
  // {"title": "Snacks", "image": "assets/lays_extracheesy.png"},
  // {"title": "Chocolates", "image": "assets/chocolate.png"},
  // {"title": "Biscuits", "image": "assets/biscuit.png"},
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// 🔹 Delivery Section
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "DELIVERY IN",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "25 minutes",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Friends Colony, Trivandrum, Kerala",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),

                    /// Profile Icon
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// 🔹 Search Bar
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search 'condom'",
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// 🔹 Offer Banner
                Container(
                  height: 130,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE6F0C5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Enjoy the special offer",
                        style: TextStyle(fontSize: 14, color: Colors.green),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "up to 30%",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "at 12 - 20 February 2021",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                /// 🔹 Trending Picks Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Trending Picks",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 13, color: Colors.green),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                /// 🔹 Horizontal Products
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 0),
                        padding: const EdgeInsets.all(12),
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   borderRadius: BorderRadius.circular(20),
                        //   // boxShadow: [
                        //   //   BoxShadow(
                        //   //     color: Colors.grey.withOpacity(0.15),
                        //   //     blurRadius: 10,
                        //   //     spreadRadius: 2,
                        //   //   ),
                        //   // ],
                        // ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Image Box with Border
                            Container(
                              height: 110,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/lays_extracheesy.png",
                                  height: 80,
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),

                            /// Category Tag
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green.shade50,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const CircleAvatar(
                                    radius: 3,
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      14,
                                      110,
                                      19,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    "BAKERY",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 14, 110, 19),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 0),

                            const Text(
                              "Extra Cheesy Lays \nClassic",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.bold,
                                height: 1.25,
                              ),
                            ),

                            const SizedBox(height: 4),

                            const Text(
                              "100 g",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "₹ 60",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                    const Text(
                                      '₹ 60',
                                      style: TextStyle(
                                        color: const Color(0xFF9B9999),
                                        fontSize: 13,
                                        fontFamily: 'Rubik',
                                        fontWeight: FontWeight.w700,
                                        // textDecoration: TextDecoration.lineThrough,
                                        height: 0.4,
                                      ),
                                    ),
                                  ],
                                ),
                                // ElevatedButton(
                                //   style: ElevatedButton.styleFrom(
                                //     backgroundColor: Colors.green,
                                //     shape: const StadiumBorder(),
                                //     padding: const EdgeInsets.symmetric(
                                //       horizontal: 25,
                                //       vertical: 8,
                                //     ),
                                //   ),
                                //   onPressed: () {},
                                //   child: const Text(
                                //     "ADD",
                                //     style: TextStyle(color: Colors.white),
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 10),
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Shop by Category",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 13, color: Colors.green),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                /// 🔹 Big Category Cards Row
                Row(
                  children: [
                    Expanded(
                      child: categoryBigCard(
                        title: "Fruits & Vegetables",
                        image: "assets/fruits_vegetables.png",
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: categoryBigCard2(
                        title: "Dairy, Bread & Eggs",
                        image: "assets/bread_eggs.png",
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                GridView.builder(
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: smallCategories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.85,
                  ),
                  itemBuilder: (context, index) {
                    final item = smallCategories[index];

                    return categorySmallCard(
                      title: item["title"]!,
                      image: item["image"]!,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget categoryBigCard({required String title, required String image}) {
  return Container(
    height: 120,
    decoration: BoxDecoration(
      color: const Color(0xFFDDEEDC),
      borderRadius: BorderRadius.circular(18),
    ),
    padding: const EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),

        Image.asset(image, height: 75, fit: BoxFit.contain),
      ],
    ),
  );
}

Widget categoryBigCard2({required String title, required String image}) {
  return Container(
    height: 120,
    decoration: BoxDecoration(
      color: const Color(0xFFDDEEDC),
      borderRadius: BorderRadius.circular(18),
    ),
    padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),
        // const Spacer(),
        Align(
          alignment: Alignment.center,
          child: Image.asset(image, height: 85, width: 800),
        ),
      ],
    ),
  );
}

Widget categorySmallCard({required String title, required String image}) {
  return Container(
    height: 160,
    decoration: BoxDecoration(
      color: const Color(0xFFDDEEDC),
      borderRadius: BorderRadius.circular(18),
    ),
    padding: const EdgeInsets.all(8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
        ),
        Image.asset(image, height: 34),
        const SizedBox(height: 8),
      ],
    ),
  );
}
