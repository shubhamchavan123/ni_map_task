// import 'package:flutter/material.dart';
// import 'package:knackbe/core/local_assets/common_images.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// // class MyApp1 extends StatefulWidget {
// //   const MyApp1({super.key});
// //
// //   @override
// //   _MyApp1State createState() => _MyApp1State();
// // }
// //
// // class _MyApp1State extends State<MyApp1> {
// //   PageController page = PageController(initialPage: 0);
// //   int pageIndex = 0;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Page View'),
// //       ),
// //       body: PageView(
// //         controller: page,
// //         scrollDirection: Axis.horizontal,
// //         pageSnapping: true,
// //         children: [
// //           SizedBox(
// //             height: 50,
// //             child: Column(
// //               children: [
// //                 Image.asset(AssetCatalog.userImg),
// //               ],
// //             ),
// //           ),
// //           Container(
// //             color: Colors.grey,
// //             child: Center(
// //               child: Image.asset(AssetCatalog.userImg),
// //             ),
// //           ),
// //           Container(
// //             color: Colors.teal,
// //             child: Center(
// //               child: Text(
// //                 'Page-3',
// //                 style: TextStyle(color: Colors.white, fontSize: 25),
// //               ),
// //             ),
// //           ),
// //           Container(
// //             color: Colors.green,
// //             child: const Center(
// //               child: Text(
// //                 'Page-4',
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// // =======
//
// import 'package:flutter/material.dart';
//
// // void main() => runApp(const MyApp());
//
// class MyApp2 extends StatelessWidget {
//   const MyApp2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
//           child: PageViewDemo(),
//         ),
//       ),
//     );
//   }
// }
//
// class PageViewDemo extends StatefulWidget {
//   const PageViewDemo({super.key});
//
//   @override
//   State<PageViewDemo> createState() => _PageViewDemoState();
// }
//
// class _PageViewDemoState extends State<PageViewDemo> {
//   final _controller = PageController(
//     initialPage: 0,
//   );
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       controller: _controller,
//       children: const [
//         MyPage1Widget( ),
//         MyPage2Widget(),
//         MyPage3Widget(),
//       ],
//     );
//   }
// }
//
// class MyPage1Widget extends StatelessWidget {
//   const MyPage1Widget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Image.asset(AssetCatalog.userImg),
//     );
//   }
// }
//
// class MyPage2Widget extends StatelessWidget {
//   const MyPage2Widget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Image.asset(AssetCatalog.userImg),
//     );
//   }
// }
//
// class MyPage3Widget extends StatelessWidget {
//   const MyPage3Widget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Image.asset(AssetCatalog.userImg),
//     );
//   }
// }
//
