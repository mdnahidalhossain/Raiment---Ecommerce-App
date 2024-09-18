import 'package:ecommerce_app/bottom_nav_bar.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/drawers/men_drawer.dart';
import 'package:ecommerce_app/pages/profile_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:ecommerce_app/pages/whishlist_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const WishlistPage(),
    const CartPage(),
    const ProfilePage()
  ];

  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            iconSize: 40,
            padding: EdgeInsets.all(10),
            icon: const Icon(
              Icons.menu,
              color: Color.fromARGB(255, 38, 38, 38),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              iconSize: 40,
              padding: EdgeInsets.all(10),
              icon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 38, 38, 38),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SearchPage()
                //   )
                // );
                //Scaffold.of(context).openEndDrawer();
                showSearch(context: context, delegate: SearchBar());
    
                //MaterialLocalizations.of(context).openAppDrawerTooltip;
              },
            ),
          )
        ],
      ),
      drawer: const Drawer(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        width: 500,
        child: MenDrawer(),
      ),
      // endDrawer: Drawer(
      //   backgroundColor: Color.fromARGB(255, 243, 243, 243),
      //   width: 500,
      //   //child: SearchBar(),
      // ),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[currentIndex],
    );
  }
}

class SearchBar extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          },
        )
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      icon: Image.asset(
        'lib/images/icons8-left.png',
        color: Color.fromARGB(255, 38, 38, 38),
      ),
      onPressed: () => close(context, null));

  @override
  Widget buildResults(BuildContext context) => Container();

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      
    ];

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
          },
        );
      },
    );
  }
}
