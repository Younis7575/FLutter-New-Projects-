// import 'package:easy_dashboard/easy_dashboard.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
//
// // Import the necessary widget classes for your bodies
// import 'package:your_app/profile_body.dart'; // Adjust the path accordingly
// import 'package:your_app/about_body.dart';
// import 'package:your_app/settings_body.dart';
// import 'package:your_app/help_body.dart';
// import 'package:your_app/share_body.dart';
//
// class NebtorDashboard extends StatelessWidget {
//   const NebtorDashboard({super.key});
//
//   final EasyDashboardController controller = EasyDashboardController(); // Create the controller
//   final List<Widget> actions = []; // Initialize actions list
//
//   @override
//   Widget build(BuildContext context) {
//     return EasyDashboard(
//       controller: controller, // Pass the controller
//       navigationIcon: const Icon(Icons.menu, color: Colors.white),
//       appBarActions: actions,
//       centerTitle: true,
//       appBarColor: Colors.teal,
//       sideBarColor: Colors.grey.shade100,
//       tabletView: const TabletView(
//         fullAppBar: false,
//         border: BorderSide(width: 0.5, color: Colors.grey),
//       ),
//       desktopView: const DesktopView(
//         fullAppBar: true,
//         border: BorderSide(width: 0.5, color: Colors.grey),
//       ),
//       drawer: (context, size) => EasyDrawer( // Provide context and size arguments
//         iconColor: Colors.teal,
//         hoverColor: Colors.grey.shade300,
//         tileColor: Colors.grey.shade100,
//         selectedColor: Colors.black.withGreen(80),
//         selectedIconColor: Colors.white,
//         textColor: Colors.black.withGreen(20),
//         selectedTileColor: Colors.teal.shade400.withOpacity(.8),
//         tiles: [
//           EasyTile(
//             title: "Profile",
//             iconData: Icons.person,
//             body: ProfileBody(),
//           ),
//           EasyTile(
//             title: "About",
//             iconData: Icons.info,
//             body: AboutBody(),
//           ),
//           EasyTile(
//             title: "Settings",
//             iconData: Icons.settings,
//             body: SettingsBody(),
//           ),
//           EasyTile(
//             title: "Help",
//             iconData: Icons.help,
//             body: HelpBody(),
//           ),
//           EasyTile(
//             title: "Share",
//             iconData: Icons.share,
//             body: ShareBody(),
//           ),
//         ],
//         // ... other drawer properties remain unchanged
//       ),
//     );
//   }
// }
