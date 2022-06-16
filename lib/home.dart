// import 'package:first_project/student_view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class Homeview extends StatelessWidget {
//   const Homeview({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color.fromARGB(255, 137, 223, 243),
//         body: ListView(
//           children: const [
//             WalletCard(
//               colour: Color(0xfff3cd81),
//               date: "23 sep 2020",
//               picture: "assets/image/arrowline.svg",
//               text: "Amazon Gift \n& Pay",
//               lasttext: ["Destop", "Mobile"],
//             ),
//             WalletCard(
//               colour: Color.fromARGB(255, 235, 234, 233),
//               date: "17 sep 2020",
//               picture: "assets/image/Apple.svg",
//               text: "Apple Wallet \n&  Payment",
//               lasttext: ["Tablet", "Mobile"],
//             ),
//             WalletCard(
//               colour: Color(0xfffbbaa8),
//               date: "08 sep 2020",
//               picture: "assets/image/G.svg",
//               text: "Google Wallet \n& Payment",
//               lasttext: ["Mobile"],
//             ),
//           ],
//         ));
//   }
// }

// class WalletCard extends StatelessWidget {
//   const WalletCard(
//       {required this.date,
//       required this.picture,
//       required this.text,
//       required this.lasttext,
//       required this.colour,
//       Key? key})
//       : super(key: key);
//   final String date;
//   final String picture;
//   final String text;
//   final List<String> lasttext;
//   final Color colour;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(30.0, 25.0, 30.0, 25.0),
//       margin: const EdgeInsets.all(8.0),
//       color: colour,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 date,
//                 style: const TextStyle(color: Colors.black38),
//               ),
//               SvgPicture.asset(
//                 width: 32.0,
//                 height: 32.0,
//                 picture,
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 40.0,
//           ),
//           GestureDetector(
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(builder: ((context) {
//                 return const StudentView();
//               })));
//             },
//             child: Container(
//               height: 30.0,
//               decoration: const BoxDecoration(
//                 color: Colors.black,
//               ),
//               padding: const EdgeInsets.only(
//                   left: 10.0, right: 10.0, bottom: 8.0, top: 8.0),
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: const [
//                   Text(
//                     "Case Study",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 14.0,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 24.0,
//           ),
//           Row(
//             children: [
//               Text(
//                 text,
//                 style: const TextStyle(
//                     fontSize: 30.0, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 30.0,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 funtionText(lasttext) ?? "",
//                 style: const TextStyle(
//                     fontSize: 15.0, fontWeight: FontWeight.bold),
//               ),
//               SvgPicture.asset(
//                 width: 10.0,
//                 height: 25.0,
//                 "assets/image/arrow.svg",
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   funtionText(List<String> list) {
//     String returnText = "";
//     int i = 0;
//     while (i < list.length) {
//       if (returnText == "") {
//         returnText = list[i];
//       } else {
//         returnText = "$returnText • ${list[i]}";
//       }
//       i++;
//     }

//     return returnText;
//   }
// }
