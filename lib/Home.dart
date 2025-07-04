import 'dart:async';
import 'package:flutter/material.dart';

void home() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  final GlobalKey<_SearchState> searchKey = GlobalKey<_SearchState>();

  List<String> categories = [
    'assets/head.png',
    'assets/cover.png',
    'assets/phones.png',
    'assets/pods.png',
    'assets/charger.png',
    'assets/bank.png',
  ];

  List<String> deals = [
    'assets/headphone.jpg',
    'assets/airpods.jpg',
    'assets/coverr.jpg',
  ];
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            searchKey.currentState?.ClearSearch();
          },
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Logo and Name
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/cart.png",
                              width: 40,
                              height: 40,
                            ),
                            Text(
                              "Leuze",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Quicksand",
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Icons in Bar
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: IconButton(
                                padding: EdgeInsets.all(0),
                                constraints: BoxConstraints(),
                                splashColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onPressed: () {},
                                icon: Icon(Icons.favorite),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              child: IconButton(
                                padding: EdgeInsets.all(0),
                                constraints: BoxConstraints(),
                                splashColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onPressed: () {},
                                icon: Icon(Icons.menu),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Search(key: searchKey),
                  SizedBox(height: 10),
                  // Categories
                  Container(
                    margin: EdgeInsets.only(left: 17, right: 17, top: 7),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Quicksand",
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  right: 0,
                                  left: 0,
                                  bottom: 0,
                                ),
                                minimumSize: Size(0, 0),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: Text(
                                "More",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: "Quicksand",
                                ),
                              ),
                            ),

                            IconButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  right: 0,
                                  left: 7,
                                  bottom: 4,
                                ),
                                minimumSize: Size(0, 0),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              icon: Icon(Icons.arrow_forward_ios, size: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Categories Icons
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                categories[index],
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover, // عشان تملى المساحة كويس
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // Top Deals
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 17, vertical: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Deals on Electronics",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Quicksand",
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  right: 0,
                                  left: 0,
                                  bottom: 0,
                                ),
                                minimumSize: Size(0, 0),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: Text(
                                "More",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: "Quicksand",
                                ),
                              ),
                            ),

                            IconButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.only(
                                  top: 0,
                                  right: 0,
                                  left: 7,
                                  bottom: 4,
                                ),
                                minimumSize: Size(0, 0),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              icon: Icon(Icons.arrow_forward_ios, size: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //
                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: deals.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(20),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              deals[index],
                              width: 100,
                              height: 100,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Container(
                          color: Colors.grey,
                          height: 40,
                          width: 1,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Search Bar
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> allProducts = [
    "Apple AirPods Pro",
    "Oraimo FreePods 3",
    "Anker Soundcore Life P2",
    "Samsung Galaxy Buds2 Pro",
    "Xiaomi Redmi Buds 4",
    "Apple AirPods 3",
    "Philips TAUH202BK",
    "Skullcandy Crusher Evo",
    "Lenovo HD200 Wireless Headphones",
    "Beats Studio3 Wireless",
    "JBL Tune 510BT",
    "Sony WH-1000XM5",
    "360° Full Protection Case for Realme C55",
    "Leather Wallet Case for Oppo Reno 8",
    "Rugged Armor Case for Xiaomi Redmi Note 12",
    "Transparent Clear Case for iPhone 15",
    "Carbon Fiber Shockproof Case for Samsung S23 Ultra",
    "Silicone Case for iPhone 13 Pro",
    "Infinix Zero 30",
    "Oppo Reno 11F",
    "Realme C67",
    "Xiaomi Redmi Note 13 Pro",
    "Samsung Galaxy S24 Ultra",
    "iPhone 15 Pro Max",
    "Joyroom 38W Car Charger with Dual USB",
    "Baseus GaN 65W Charger",
    "Oraimo 18W Dual Port Charger",
    "Samsung 25W Super Fast Charger",
    "Apple 20W USB-C Power Adapter",
    "Anker 20W Fast Charger (USB-C)",
  ];

  List<String> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = [];
  }

  void ClearSearch() {
    setState(() {
      filteredProducts = [];
    });
  }

  void SearchProduct(String query) {
    final results = allProducts
        .where((product) => product.toLowerCase().contains(query.toLowerCase()))
        .toList();

    setState(() {
      filteredProducts = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              filteredProducts = [];
            });
          },
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "ابحث عن منتج...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.search),
                    ),
                    onChanged: SearchProduct,
                  ),
                ),
              ),
              ImageScroll(),
            ],
          ),
        ),
        if (filteredProducts.isNotEmpty)
          Positioned(
            top:
                65, // مكانها من أعلى الشاشة (عدّل الرقم حسب مكان الـ TextField)
            left: 0,
            right: 0,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 300),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: ListView.separated(
                  padding: EdgeInsets.all(8),
                  shrinkWrap: true,

                  itemCount: filteredProducts.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(filteredProducts[index]));
                  },
                  separatorBuilder: (context, index) => Divider(
                    color: const Color.fromARGB(255, 192, 192, 192),
                    height: 1,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

// Images Scroll
class ImageScroll extends StatefulWidget {
  const ImageScroll({super.key});

  @override
  State<ImageScroll> createState() => _ImageScrollState();
}

class _ImageScrollState extends State<ImageScroll> {
  List<String> ImagesScroll = [
    "assets/promo1.jpg",
    "assets/promo2.jpg",
    "assets/promo3.jpg",
  ];

  PageController _pageController = PageController();
  int _pageIndex = 0;
  Timer? _timer;

  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_pageIndex < ImagesScroll.length - 1) {
        _pageIndex = _pageIndex + 1;
      } else {
        _pageIndex = 0;
      }
      _pageController.animateToPage(
        _pageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView.builder(
        controller: _pageController,
        itemCount: ImagesScroll.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(ImagesScroll[index], fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
