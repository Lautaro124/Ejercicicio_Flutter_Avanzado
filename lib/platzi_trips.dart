import 'package:curzo_avanzado_flutter_plat/user/ui/screens/profile_trips.dart';
import 'package:flutter/material.dart';

import 'places/ui/screens/home_trips.dart';
import 'places/ui/screens/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    const SearchTrips(),
    const ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: (""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: (""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: (""),
              ),
            ]),
      ),
    );
  }
}
