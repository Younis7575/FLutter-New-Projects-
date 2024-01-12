import 'package:flutter/material.dart';
import 'package:final_year_project/Widgets/CustomSUpContainer.dart';

class Supervisor7 extends StatefulWidget {
  const Supervisor7({Key? key}) : super(key: key);

  @override
  _Supervisor7State createState() => _Supervisor7State();
}

class _Supervisor7State extends State<Supervisor7> with SingleTickerProviderStateMixin {
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
              imageUrl: 'https://www.uaar.edu.pk/media/profile/tariq-10072020.jpg',
              name: 'Dr. Tariq Ali',
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
