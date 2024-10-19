import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

void main() {
  runApp(const MyApp());
}

enum _SelectedTab { home, favorite, add, search, person }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crystal Bottom Bar Example',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     extendBody: true,
  //     body: SizedBox(
  //       height: MediaQuery.of(context).size.height,
  //       child: Image.network(
  //         "https://images.pexels.com/photos/1671325/pexels-photo-1671325.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  //         fit: BoxFit.fitHeight,
  //       ),
  //     ),
  //     bottomNavigationBar: CrystalNavigationBar(
  //       currentIndex: _SelectedTab.values.indexOf(_selectedTab),
  //       height: 10,
  //       // indicatorColor: Colors.blue,
  //       unselectedItemColor: Colors.white70,
  //       backgroundColor: Colors.black.withOpacity(0.1),
  //       onTap: _handleIndexChanged,
  //       items: [
  //         /// Home
  //         CrystalNavigationBarItem(
  //           icon: IconlyBold.home,
  //           unselectedIcon: IconlyLight.home,
  //           selectedColor: Colors.white,
  //         ),
  //
  //         /// Favourite
  //         CrystalNavigationBarItem(
  //           icon: IconlyBold.heart,
  //           unselectedIcon: IconlyLight.heart,
  //           selectedColor: Colors.red,
  //         ),
  //
  //         /// Add
  //         CrystalNavigationBarItem(
  //           icon: IconlyBold.plus,
  //           unselectedIcon: IconlyLight.plus,
  //           selectedColor: Colors.white,
  //         ),
  //
  //         /// Search
  //         CrystalNavigationBarItem(
  //             icon: IconlyBold.search,
  //             unselectedIcon: IconlyLight.search,
  //             selectedColor: Colors.white),
  //
  //         /// Profile
  //         CrystalNavigationBarItem(
  //           icon: IconlyBold.user_2,
  //           unselectedIcon: IconlyLight.user,
  //           selectedColor: Colors.white,
  //         ),
  //       ],
  //     ),
  //   );
  // }
  int inde = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.orange,
      body: Center(
        child: Text("jjj"),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 50,
            spreadRadius: 5,
          ),
        ]),
        child: CrystalNavigationBar(
          enableFloatingNavBar: false,
          paddingR: EdgeInsets.zero,
          marginR: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          // itemPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          margin: EdgeInsets.only(right: 10, left: 10, top: 0, bottom: 5),
          enablePaddingAnimation: true,

          unselectedItemColor: Colors.black87,
          selectedItemColor: Color(0xFF8E2DE2),
          // backgroundColor: Colors.white,
          // Colors.black.withOpacity(0.1),
          // outlineBorderColor: Colors.black.withOpacity(0.1),

          currentIndex: inde,
          onTap: (index) {
            inde = index;
            setState(() {});
            // widget.navigationShell.goBranch(index,
            //     initialLocation: widget.navigationShell.currentIndex == index);
          },

          items: [
            /// Home
            CrystalNavigationBarItem(
              child: Container(
                height: 10,
                width: 20,
                color: Colors.red,
              ),
              unselectedChild: Container(
                height: 10,
                width: 20,
                color: Colors.black87,
              ),
              // icon: Icons.home,
              // unselectedIcon: Icons.home,
              // selectedColor: Colors.black,
            ),

            /// Favourite
            CrystalNavigationBarItem(
              icon: Icons.abc_outlined,
              unselectedIcon: Icons.abc_outlined,
              // selectedColor: Colors.black,
            ),

            /// Add
            CrystalNavigationBarItem(
              icon: Icons.save,
              unselectedIcon: Icons.save,
              // selectedColor: Colors.black,
            ),

            /// Search
            CrystalNavigationBarItem(
              icon: Icons.search,
              unselectedIcon: Icons.search,
              // selectedColor: Colors.black,
            ),

            /// Profile
            CrystalNavigationBarItem(
              icon: Icons.add,
              unselectedIcon: Icons.add,
              // selectedColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
