import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
  const Task4({super.key});

  final List<String> tabs = const ['🍔', '🍕', '🍖', '🍩', '🥤', '☕'];
  final List<Color> colors = const [
    Color(0xFFEFE378),
    Color(0xFFEB96B3),
    Color(0xFFBAB6B6),
    Color(0xFFF78BAF),
    Color(0xFF89C2F0),
    Color(0xFFC4C3C3),
  ];
  final List<String> labels = const [
    'Burger',
    'Pizza',
    'BBQ',
    'Dessert',
    'Drinks',
    'Hot Choco',
  ];
  final List<String> images = const [
    'images/WhatsApp Image 2026-02-05 at 22.26.22.jpeg',
    'images/WhatsApp Image 2026-02-05 at 22.26.44.jpeg',
    'images/WhatsApp Image 2026-02-05 at 22.26.54.jpeg',
    'images/WhatsApp Image 2026-02-05 at 22.27.12.jpeg',
  ];
  final List<String> textPic = const [
    'Family Pack',
    'Morning Breakfast',
    '50% OFF',
    'Lunch Deal',
  ];
  final List<String> textResturant = const [
    'Happy Restaurant 1',
    'Happy Restaurant 2',
    'Happy Restaurant 3',
  ];
  final List<String> RecentORder = const [
    ' Margherita Pizaa',
    ' Chicken Shawerma',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF7EAF3), Color(0xFFF1DFE9), Color(0xFFFAF1F8)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    "Hello, Ahmed 👋",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.orangeAccent,
                        size: 22,
                      ),
                      SizedBox(width: 4),
                      Text("Cairo, Egypt"),
                    ],
                  ),
                  trailing: CircleAvatar(
                    backgroundImage: AssetImage(
                      "images/WhatsApp Image 2026-02-03 at 01.19.24.jpeg",
                    ),
                    radius: 25,
                    backgroundColor: Colors.grey,
                  ),
                ),
                const Divider(indent: 20, endIndent: 20),
                const SizedBox(height: 10),
                const Text(
                  'Categories',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: colors[index],
                              child: Text(
                                tabs[index],
                                style: const TextStyle(fontSize: 25),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              labels[index],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Popular Deals 🔥',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1,
                  ),
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.7),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 12,
                            child: Text(
                              textPic[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 25),
                const Text(
                  "Nearby Restaurants",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: textResturant.length,
                  separatorBuilder: (context, index) =>
                      const Divider(indent: 20, endIndent: 20, thickness: 1),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'images/WhatsApp Image 2026-02-05 at 22.27.12.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        textResturant[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("BBQ * Burger * Fast Food"),
                          Row(
                            children: const [
                              Icon(Icons.star, color: Colors.orange, size: 16),
                              SizedBox(width: 4),
                              Text("4.5"),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 25),
                const Text(
                  'Recent Order',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.8,
                  ),
                  itemCount: RecentORder.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: ListTile(
                          leading: Icon(Icons.history, color: Colors.orange),
                          title: Text(
                            RecentORder[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Delivered yesterday",
                            style: TextStyle(color: Colors.grey),
                          ),
                          trailing: Text(
                            "Re-order",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
