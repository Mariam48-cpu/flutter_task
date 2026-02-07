import 'package:flutter/material.dart';

class Task4 extends StatelessWidget {
   Task4({super.key});

  final List<String> tabs =  ['🍔', '🍕', '🍖', '🍩', '🥤', '☕'];
  final List<Color> colors =  [
    Color(0xFFEFE378),
    Color(0xFFEB96B3),
    Color(0xFFBAB6B6),
    Color(0xFFF78BAF),
    Color(0xFF89C2F0),
    Color(0xFFC4C3C3),
  ];
  final List<String> labels =  [
    'Burger',
    'Pizza',
    'BBQ',
    'Dessert',
    'Drinks',
    'Hot Choco',
  ];

  final List<String> images =  [
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
    'Margherita Pizza',
    'Chicken Shawerma',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF7EAF3), Color(0xFFF1DFE9), Color(0xFFFAF1F8)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 16, right: 16),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
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
                    radius: 25,
                    backgroundImage: AssetImage(
                      "images/WhatsApp Image 2026-02-03 at 01.19.24.jpeg",
                    ),
                  ),
                ),

                Divider(indent: 20, endIndent: 20),
                SizedBox(height: 10),

                Text(
                  'Categories',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),

                SizedBox(
                  height: 110,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:  EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: colors[index],
                              child: Text(
                                tabs[index],
                                style:  TextStyle(fontSize: 25),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              labels[index],
                              style:  TextStyle(
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

                SizedBox(height: 15),
                Text(
                  'Popular Deals 🔥',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),

                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
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
                              style: TextStyle(
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

                SizedBox(height: 25),
                Text(
                  "Nearby Restaurants",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 0),

                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: textResturant.length,
                  separatorBuilder: (context, index) =>
                      Divider(indent: 20, endIndent: 20),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/WhatsApp Image 2026-02-05 at 22.27.12.jpeg',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        textResturant[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 16),
                          SizedBox(width: 4),
                          Text("4.5"),
                        ],
                      ),
                    );
                  },
                ),

                SizedBox(height: 25),
                Text(
                  'Recent Order',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 170,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: RecentORder.length,
                    separatorBuilder: (context, index) => SizedBox(width: 16),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 280,
                        padding:  EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey.withOpacity(.3),
                          ),
                        ),
                        child: Center(
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Icon(
                              Icons.history,
                              size: 30,
                              color: Colors.orange,
                            ),
                            title: Text(
                              RecentORder[index],

                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),

                            subtitle: Text(
                              "Delivered yesterday",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                              softWrap: true,
                            ),
                            trailing: Text(
                              "Re-order",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
