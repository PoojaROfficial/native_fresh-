import 'package:flutter/material.dart';
import 'product_details_page.dart';

final List<Map<String, String>> smallCategories = [
  {"title": "Frozen Food\n& Ice Creams", "image": "assets/icecream_sunday.png"},
  {"title": "Sweet\nCravings", "image": "assets/chocolate.png"},
  {"title": "Cold Drinks\n& Juices", "image": "assets/pepsi.png"},
  {"title": "Munchies", "image": "assets/lays_extracheesy.png"},
  // second
  {"title": "Frozen Food\n& Ice Creams", "image": "assets/icecream_sunday.png"},
  {"title": "Sweet\nCravings", "image": "assets/chocolate.png"},
  {"title": "Cold Drinks\n& Juices", "image": "assets/pepsi.png"},
  {"title": "Munchies", "image": "assets/lays_extracheesy.png"},
  // second
  {"title": "Frozen Food\n& Ice Creams", "image": "assets/icecream_sunday.png"},
  {"title": "Sweet\nCravings", "image": "assets/chocolate.png"},
  {"title": "Cold Drinks\n& Juices", "image": "assets/pepsi.png"},
  {"title": "Munchies", "image": "assets/lays_extracheesy.png"},
  // second
  {"title": "Frozen Food\n& Ice Creams", "image": "assets/icecream_sunday.png"},
  {"title": "Sweet\nCravings", "image": "assets/chocolate.png"},
  {"title": "Cold Drinks\n& Juices", "image": "assets/pepsi.png"},
  {"title": "Munchies", "image": "assets/lays_extracheesy.png"},

  // {"title": "Bakery", "image": "assets/bread.png"},
  // {"title": "Snacks", "image": "assets/lays_extracheesy.png"},
  // {"title": "Chocolates", "image": "assets/chocolate.png"},
  // {"title": "Biscuits", "image": "assets/biscuit.png"},
];
final List<Map<String, String>> brandData = [
  {
    "logo": "assets/cadbury_logo.png",
    "product": "assets/cadbury_chocolate.png",
  },
  {
    "logo": "assets/cadbury_logo.png",
    "product": "assets/cadbury_chocolate.png",
  },
  {
    "logo": "assets/cadbury_logo.png",
    "product": "assets/cadbury_chocolate.png",
  },
  {"logo": "assets/tea_logo.png", "product": "assets/tata_bag.png"},
  {"logo": "assets/tea_logo.png", "product": "assets/tata_bag.png"},
  {"logo": "assets/tea_logo.png", "product": "assets/tata_bag.png"},
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedBigPackIndex = 0;
  int _currentBannerIndex = 0;

  final List<Map<String, dynamic>> bigPackTabs = [
    {"title": "Atta &\nFlours", "icon": Icons.grain},
    {"title": "Ghee & Oil", "icon": Icons.oil_barrel},
    {"title": "Rice & Dals", "icon": Icons.rice_bowl},
    {"title": "Masala &\nSpices", "icon": Icons.spa},
    {"title": "Sugar", "icon": Icons.icecream},
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: CustomScrollView(
        slivers: [
          /// 🔹 Sliver App Bar
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: true,
            expandedHeight: 170.0,
            backgroundColor: Colors.grey.shade100,
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: const EdgeInsets.fromLTRB(16, 45, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "DELIVERY IN",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
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
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
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
                  ],
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: TextField(
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
              ),
            ),
          ),

          /// 🔹 Content Body
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// 🔹 Offer Banner Carousel
                      Column(
                        children: [
                          SizedBox(
                            height: 130,
                            child: PageView.builder(
                              onPageChanged: (index) {
                                setState(() {
                                  _currentBannerIndex = index;
                                });
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: double.infinity,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 0,
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE6F0C5),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Enjoy the special offer",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.green,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        index == 0
                                            ? "up to 30%"
                                            : index == 1
                                            ? "up to 50%"
                                            : "up to 25%",
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      const Text(
                                        "at 12 - 20 February 2021",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                              (index) => Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                width: _currentBannerIndex == index ? 20 : 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: _currentBannerIndex == index
                                      ? Colors.green
                                      : Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            ),
                          ),
                        ],
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
                            return GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetailsPage(),
                                ),
                              ),
                              child: Container(
                                width: 150,
                                margin: const EdgeInsets.only(right: 0),
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    /// Image Box with Border
                                    Container(
                                      height: 110,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey.shade300,
                                        ),
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
                                              color: Color.fromARGB(
                                                255,
                                                14,
                                                110,
                                                19,
                                              ),
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
                                    const SizedBox(height: 5),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                color: Color(0xFF9B9999),
                                                fontSize: 13,
                                                fontFamily: 'Rubik',
                                                fontWeight: FontWeight.w700,
                                                height: 0.4,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

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
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetailsPage(),
                                ),
                              ),
                              child: categoryBigCard(
                                title: "Fruits & Vegetables",
                                image: "assets/fruits_vegetables.png",
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetailsPage(),
                                ),
                              ),
                              child: categoryBigCard2(
                                title: "Dairy, Bread & Eggs",
                                image: "assets/bread_eggs.png",
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 15),

                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: smallCategories.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 0.8,
                            ),
                        itemBuilder: (context, index) {
                          final item = smallCategories[index];
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ProductDetailsPage(),
                              ),
                            ),
                            child: categorySmallCard(
                              title: item["title"]!,
                              image: item["image"]!,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 25),

                      /// 🔹 Deals of the Day
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Deals of the Day",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 15),
                    ],
                  ),
                ),
                SizedBox(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      /// Green Background
                      Container(
                        width: double.infinity,
                        height: 225,
                        decoration: BoxDecoration(
                          color: const Color(0xFF00B761),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),

                      /// Basket Image
                      Positioned(
                        left: -20,
                        bottom: -45,
                        child: Image.asset(
                          "assets/vegetable_basket.png", // your basket image
                          height: 300,
                          width: 380,
                        ),
                      ),

                      /// Product Card (Floating)
                      Positioned(
                        right: 0,
                        top: 5,
                        child: SizedBox(
                          height: 225,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.only(left: 140),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: GestureDetector(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ProductDetailsPage(),
                                    ),
                                  ),
                                  child: dealProductCard(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  height: 90, // increase little bit
                  child: PageView.builder(
                    controller: PageController(
                      viewportFraction: 0.8,
                      initialPage: 1,
                    ),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFFDDEEDC),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),

                /// 🔹 Big Packs Big Savings
                Container(
                  width: double.infinity,
                  color: const Color(0xFFE6F3E8),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Big Packs Big Savings",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 70,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: bigPackTabs.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedBigPackIndex = index;
                                });
                              },
                              child: BigPackCategory(
                                title: bigPackTabs[index]["title"],
                                selected: selectedBigPackIndex == index,
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 270,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ProductDetailsPage(),
                                  ),
                                ),
                                child: bigPackProductCard(selectedBigPackIndex),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Brand Spotlight",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: brandData.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 0.75,
                            ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ProductDetailsPage(),
                              ),
                            ),
                            child: brandCard(
                              brandData[index]["logo"]!,
                              brandData[index]["product"]!,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget categoryBigCard({required String title, required String image}) {
  return Container(
    height: 110,
    decoration: BoxDecoration(
      color: const Color(0xFFDDEEDC),
      borderRadius: BorderRadius.circular(18),
    ),
    padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: Color.fromARGB(255, 14, 110, 19),
          ),
        ),

        Image.asset(image, height: 75, fit: BoxFit.contain),
      ],
    ),
  );
}

Widget categoryBigCard2({required String title, required String image}) {
  return Container(
    height: 110,
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
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: Color.fromARGB(255, 14, 110, 19),
          ),
        ),
        const Spacer(),
        Align(
          alignment: Alignment.center,
          child: Image.asset(image, height: 85),
        ),
      ],
    ),
  );
}

Widget categorySmallCard({required String title, required String image}) {
  return Container(
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
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 14, 110, 19),
          ),
        ),
        const SizedBox(height: 8),
        Expanded(child: Image.asset(image, fit: BoxFit.contain)),
      ],
    ),
  );
}

Widget dealProductCard() {
  return Container(
    width: 140,
    height: 300,
    padding: const EdgeInsets.fromLTRB(0, 0, 5, 6),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 10),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Discount Badge
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text(
            "16% Off",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 8),

        Center(child: Image.asset("assets/lays_extracheesy.png", height: 70)),

        const SizedBox(height: 8),

        /// Category Tag
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: const Text(
                  "• BAKERY",
                  style: TextStyle(
                    fontSize: 9,
                    color: Color.fromARGB(255, 14, 110, 19),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 6),

              const Text(
                "Extra Cheesy Lays\nClassic",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),

              // const SizedBox(height: 4),
              const Text("100 g", style: TextStyle(fontSize: 11, height: 2)),

              const SizedBox(height: 0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "₹ 60",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          height: 1,
                        ),
                      ),
                      Text(
                        "₹ 60",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          height: 1,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    height: 25,

                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.green),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 4,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "ADD",
                        style: TextStyle(color: Colors.green, fontSize: 12),
                      ),
                    ),
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

Widget bigPackProductCard(int categoryIndex) {
  String title;
  String image;
  String price;
  String oldPrice;

  switch (categoryIndex) {
    case 0:
      title = "Atta Special Pack\n5kg";
      image = "assets/logo_peedika.png"; // Fixed asset path
      price = "₹ 250";
      oldPrice = "₹ 300";
      break;
    case 1:
      title = "Premium Ghee\n500ml";
      image = "assets/logo_peedika.png";
      price = "₹ 450";
      oldPrice = "₹ 500";
      break;
    case 2:
      title = "Basmati Rice\n10kg";
      image = "assets/vegetable_basket.png";
      price = "₹ 850";
      oldPrice = "₹ 1000";
      break;
    case 3:
      title = "Masala Combo\nLarge Pack";
      image = "assets/tata_bag.png";
      price = "₹ 320";
      oldPrice = "₹ 400";
      break;
    case 4:
      title = "Sugar Family\n5kg Pack";
      image = "assets/cadbury_chocolate.png";
      price = "₹ 210";
      oldPrice = "₹ 250";
      break;
    default:
      title = "Product";
      image = "assets/lays_extracheesy.png";
      price = "₹ 0";
      oldPrice = "₹ 0";
  }

  return Container(
    width: 160,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Text(
            "16% Off",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 10),

        Center(child: Image.asset(image, height: 90)),

        const SizedBox(height: 10),

        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),

        const SizedBox(height: 6),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  oldPrice,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.green),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
              ),
              onPressed: () {},
              child: const Text(
                "ADD",
                style: TextStyle(color: Colors.green, fontSize: 12),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class BigPackCategory extends StatelessWidget {
  final String title;
  final bool selected;

  const BigPackCategory({
    super.key,
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFDDEEDC) : Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        border: selected ? Border.all(color: Colors.green, width: 2) : null,
      ),
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: selected ? Colors.green : Colors.black,
          ),
        ),
      ),
    );
  }
}

Widget brandCard(String logo, String product) {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xFFDDEEDC),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Expanded(flex: 2, child: Image.asset(logo, fit: BoxFit.contain)),
        const SizedBox(height: 6),
        Expanded(flex: 5, child: Image.asset(product, fit: BoxFit.contain)),
        const SizedBox(height: 10),
      ],
    ),
  );
}
