// import 'package:flutter/material.dart';


// class StudentView extends StatefulWidget {
//   const StudentView({Key? key}) : super(key: key);

//   @override
//   State<StudentView> createState() => _StudentViewState();
// }

// class _StudentViewState extends State<StudentView> {
//   List<Student> studentlist = [
//     Student(name: "danuja", age: 23),
//     Student(name: "markandu", age: 25),
//     Student(name: "amala", age: 29),
//     Student(name: "lamala", age: 38),
//     Student(name: "vimla", age: 48),
//     Student(name: "ram", age: 20)
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("studens List")),
//       body: ListView.builder(
//           itemCount: studentlist.length,
//           itemBuilder: ((context, index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         studentlist[index].name,
//                         style: const TextStyle(
//                             fontSize: 20.0, fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(
//                         height: 8,
//                       ),
//                       Text(
//                         studentlist[index].age.toString(),
//                         style: const TextStyle(fontSize: 18.0),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           })
//           ),
//     );
//   }
// }
// class Student {
//   final String name;
//   final int age;

//   Student({required this.name, required this.age});
// }





// import 'package:flutter/material.dart';

// class Product {
//   final String name;
//   final int price;
//   final int qty;
//   final String image;

//   Product({
//     required this.name,
//     required this.price,
//     required this.qty,
//     required this.image,
//   });
// }

// class ProductList extends StatefulWidget {
//   const ProductList({Key? key}) : super(key: key);

//   @override
//   State<ProductList> createState() => _ProductListState();
// }

// class _ProductListState extends State<ProductList> {
//   List<Product> productlist = [
//     Product(
//         name: "book",
//         price: 100,
//         qty: 10,
//         image:
//             "https://cdn.pixabay.com/photo/2016/01/27/04/32/books-1163695__340.jpg"),
//     Product(
//         name: "bag",
//         price: 2000,
//         qty: 5,
//         image:
//             "https://cdn.pixabay.com/photo/2016/06/25/12/48/go-pro-1478810__340.jpg"),
//     Product(
//         name: "pen",
//         price: 10,
//         qty: 100,
//         image:
//             "https://cdn.pixabay.com/photo/2016/11/23/18/14/fountain-pen-1854169__340.jpg"),
//     Product(
//         name: "paper",
//         price: 2,
//         qty: 100,
//         image:
//             "https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994__340.jpg"),
//     Product(
//         name: "pencil",
//         price: 20,
//         qty: 200,
//         image:
//             "https://cdn.pixabay.com/photo/2016/06/29/08/50/pencils-1486278__340.jpg"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("product details "),
//       ),
//       body: ListView.builder(
//         itemCount: 5,
//         itemBuilder: (context, index) {
//           return Padding(
//               padding: const EdgeInsets.all(6.0),
//               child: Card(
//                   child: Padding(
//                       padding: const EdgeInsets.all(6.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Expanded(
//                             child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     productlist[index].name,
//                                     style: const TextStyle(
//                                         color:
//                                             Color.fromARGB(255, 73, 117, 193),
//                                         fontSize: 20.0,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   const SizedBox(
//                                     height: 50,
//                                   ),
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         child: Text(
//                                           productlist[index].price.toString(),
//                                           style: const TextStyle(
//                                               fontSize: 18.0,
//                                               color: Color.fromARGB(
//                                                   255, 205, 112, 78)),
//                                         ),
//                                       ),
//                                       Text(
//                                         productlist[index].qty.toString(),
//                                         style: const TextStyle(
//                                             fontSize: 18.0,
//                                             color: Colors.brown),
//                                       ),
//                                     ],
//                                   )
//                                 ]),
//                           ),
//                           const SizedBox(
//                             width: 8.0,
//                           ),
//                           ClipRRect(
//                             borderRadius: BorderRadius.circular(30),
//                             child: Image.network(
//                               productlist[index].image,
//                               width: 100.0,
//                               height: 100.0,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ],
//                       ))));
//         },
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class Song {
//   final String image1;
//   final String image2;
//   final String text1;

//   Song({
//     required this.image1,
//     required this.image2,
//     required this.text1,
//   });
// }

// class SongList extends StatefulWidget {
//   const SongList({Key? key}) : super(key: key);

//   @override
//   State<SongList> createState() => _SongListState();
// }

// class _SongListState extends State<SongList> {
//   List<Song> SongList = [
//     Song(image1: "image1", image2: "image2", text1: "Ella Jacobi"),
//     Song(image1: "image1", image2: "image2", text1: "Jane halvorson"),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xffA1AEF0),
//       body: ListView.builder(
//           itemCount: SongList.length,
//           itemBuilder: ((context, index) {
//             return Padding(
//               padding: const EdgeInsets.all(00),
//               child: Center(
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(10, 35, 10, 14),
//                   child: Container(
//                     padding: const EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(35),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                           //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

//                           children: [
//                             Container(
//                               margin:
//                                   const EdgeInsets.only(top: 8, bottom: 15.0),
//                               decoration: BoxDecoration(
//                                 color: const Color(0xff8092EF),
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                               child: Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: Container(
//                                       height: 70,
//                                       width: 70,
//                                       decoration: BoxDecoration(
//                                         color: const Color(0xff586AD7),
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(15.0),
//                                         child: SvgPicture.asset(
//                                           "assets/image/msg.svg",
//                                           color: Colors.white,
//                                           height: 10,
//                                           width: 10,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Row(
//                                         children: const [
//                                           Text(
//                                             " Team Conversation  ",
//                                             style: TextStyle(
//                                                 fontSize: 16,
//                                                 color: Colors.white),
//                                             overflow: TextOverflow.ellipsis,
//                                           ),
//                                           Icon(
//                                             Icons.arrow_drop_down,
//                                             size: 25.0,
//                                             color: Colors.white,
//                                           ),
//                                         ],
//                                       ),
//                                       const Text(
//                                         "20 Total Users",
//                                         style: TextStyle(
//                                             fontSize: 15, color: Colors.white),
//                                       )
//                                     ],
//                                   ),
//                                   SvgPicture.asset(
//                                     "assets/image/filter.svg",
//                                     color: Colors.white,
//                                     height: 24.0,
//                                   ),
//                                   const SizedBox(
//                                     width: 10,
//                                   ),
//                                   SvgPicture.asset(
//                                     "assets/image/arrowline.svg",
//                                     color: Colors.white,
//                                     height: 16.0,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               padding: const EdgeInsets.all(10.0),
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Container(
//                                           height: 70,
//                                           width: 70,
//                                           decoration: BoxDecoration(
//                                               color: Colors.black,
//                                               borderRadius:
//                                                   BorderRadius.circular(30.0),
//                                               image: const DecorationImage(
//                                                 image: AssetImage(
//                                                     //SongList[index].image1,
//                                                     "assets/image/man.jpg"),
//                                               ))),
//                                       Column(
//                                         children: [
//                                           Row(
//                                             children: [
//                                               const SizedBox(
//                                                 width: 15,
//                                               ),
//                                               SvgPicture.asset(
//                                                   "assets/image/pin.svg"),
//                                               const SizedBox(
//                                                 width: 5,
//                                               ),
//                                               const Text('Lester Funk  '),
//                                             ],
//                                           ),
//                                           const Text('10 years old   '),
//                                         ],
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ]),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           })),
//     );
//   }
// }
