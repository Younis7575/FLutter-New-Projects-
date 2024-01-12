import 'package:flutter/material.dart';
import 'package:final_year_project/Widgets/CustomSUpContainer.dart';

class Supervisor10 extends StatefulWidget {
  const Supervisor10({Key? key}) : super(key: key);

  @override
  _Supervisor10State createState() => _Supervisor10State();
}

class _Supervisor10State extends State<Supervisor10> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomTabBarScreen(
              imageUrl: 'https://www.uaar.edu.pk/media/profile/mariam-070922.jpg',
              name: 'Dr.Syeda Mariam Muzammal',
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Supervisor1()));
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ), // Remove the color property here, as it will be set dynamically
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.blue, // Set the color for selected tabs
              unselectedLabelColor: Colors.grey[700], // Set the color for unselected tabs
              tabs: [
                Tab(text: 'Complete'),
                Tab(text: 'Ongoing'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  child: Center(
                    child: Text('Complete Tab Content'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('Ongoing Tab Content'),
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
