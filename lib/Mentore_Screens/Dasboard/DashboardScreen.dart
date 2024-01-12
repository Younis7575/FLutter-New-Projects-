// import 'package:flutter/material.dart';
// import 'package:flutter_admin_scaffold/admin_scaffold.dart';
//
// class DashboardScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AdminScaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('Project and Research Hub'),
//       ),
//       sideBar: SideBar(
//         items: const [
//           AdminMenuItem(
//             title: 'Profile',
//             route: '/',
//             icon: Icons.dashboard,
//           ),
//           AdminMenuItem(
//             title: 'History',
//             icon: Icons.file_copy,
//             children: [
//               AdminMenuItem(
//                 title: 'Selected FYP',
//                 route: '/secondLevelItem1',
//               ),
//               AdminMenuItem(
//                 title: 'Selected Research Work',
//                 route: '/secondLevelItem2',
//               ),
//               AdminMenuItem(
//                 title: 'Final Year Project',
//                 children: [
//                   AdminMenuItem(
//                     title: 'Requests',
//                     route: '/TeacherClass',
//                   ),
//                   AdminMenuItem(
//                     title: 'Approved',
//                     route: '/thirdLevelItem2',
//                   ),
//                 ],
//               ),
//               AdminMenuItem(
//                 title: 'Research Work',
//                 children: [
//                   AdminMenuItem(
//                     title: 'Requests',
//                     route: '/thirdLevelItem1',
//                   ),
//                   AdminMenuItem(
//                     title: 'Approved',
//                     route: '/thirdLevelItem2',
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//         selectedRoute: '/',
//         onSelected: (item) {
//           if (item.route != null) {
//             Navigator.of(context).pushNamed(item.route!);
//           }
//         },
//         footer: Container(
//           height: 50,
//           width: double.infinity,
//           color: const Color(0xff444444),
//           child: const Center(
//             child: Text(
//               'Setting',
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           alignment: Alignment.topLeft,
//           padding: const EdgeInsets.all(10),
//           child: const Text(
//             'Dashboard',
//             style: TextStyle(
//               fontWeight: FontWeight.w700,
//               fontSize: 36,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//


import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

// Define routes for each screen
const String profileRoute = '/';
const String selectedFypRoute = '/selectedFyp';
const String selectedResearchWorkRoute = '/selectedResearchWork';
const String fypRequestsRoute = '/fypRequests';
const String fypApprovedRoute = '/fypApproved';
const String researchRequestsRoute = '/researchRequests';
const String researchApprovedRoute = '/researchApproved';
const String teacherClassRoute = '/teacherClass';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Project and Research Hub'),
      ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Profile',
            route: profileRoute,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'History',
            icon: Icons.file_copy,
            children: [
              AdminMenuItem(
                title: 'Selected FYP',
                route: selectedFypRoute,
              ),
              AdminMenuItem(
                title: 'Selected Research Work',
                route: selectedResearchWorkRoute,
              ),
              AdminMenuItem(
                title: 'Final Year Project',
                children: [
                  AdminMenuItem(
                    title: 'Requests',
                    route: fypRequestsRoute,
                  ),
                  AdminMenuItem(
                    title: 'Approved',
                    route: fypApprovedRoute,
                  ),
                ],
              ),
              AdminMenuItem(
                title: 'Research Work',
                children: [
                  AdminMenuItem(
                    title: 'Requests',
                    route: researchRequestsRoute,
                  ),
                  AdminMenuItem(
                    title: 'Approved',
                    route: researchApprovedRoute,
                  ),
                ],
              ),
            ],
          ),
        ],
        selectedRoute: profileRoute, // Initially show the profile screen
        onSelected: (item) {
          if (item.route != null) {
            Navigator.of(context).pushNamed(item.route!);
          }
        },
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'Setting',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),

      // Body will dynamically display the current screen's content
      body: Navigator(
        key: Key('dashboard_navigator'), // Use a key for Navigator
        initialRoute: profileRoute, // Start with the profile screen
        onGenerateRoute: (settings) {
          // Handle route generation for each screen
          switch (settings.name) {
            case profileRoute:
              return MaterialPageRoute(builder: (context) => MentorProfileScreen());
            case selectedFypRoute:
              return MaterialPageRoute(builder: (context) => SelectedFypScreen());
            case selectedResearchWorkRoute:
              return MaterialPageRoute(builder: (context) => SelectedResearchWorkScreen());

            default:
              return MaterialPageRoute(builder: (context) => NotFoundScreen());
          }
        },
      ),
    );
  }
}

class NotFoundScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("not font"),
    );
  }
}

class MentorProfileScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("not font"),
    );
  }
}

class SelectedFypScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("not font"),
    );
  }
}

class SelectedResearchWorkScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("not font"),
    );
  }
}
