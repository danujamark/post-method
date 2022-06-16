// import 'package:flutter/material.dart';

// class Homeview extends StatelessWidget {
//   const Homeview({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Hello")),
//       body: Center(
//         child: InkWell(
//           onTap: () {
//             debugPrint("click");
//          },

//           child: Container(
//             decoration: BoxDecoration(
//                 color: Colors.blueAccent,
//                 border: Border.all(color: Colors.black, width: 2.0),
//                 borderRadius: BorderRadius.circular(8.0)),
//             // margin: const EdgeInsets.all(8.0),

//             padding: const EdgeInsets.only(
//                 top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),

//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const Text(
//                   'Click',
//                   style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black45,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(
//                   height: 16.0,
//                 ),
//                 const Text(
//                   'Click',
//                   style: TextStyle(
//                       fontSize: 20.0,
//                       color: Colors.black45,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(
//                   height: 16.0,
//                 ),
//                 Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: const [
//                     Text(
//                       'Click',
//                       style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.black45,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       width: 16.0,
//                     ),
//                     Text(
//                       'Click',
//                       style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.black45,
//                           fontWeight: FontWeight.bold),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ui creation
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BottomBar"),
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 16.0,
            ),
            Icon(Icons.favorite),
            SizedBox(
              width: 16.0,
            )
          ],
        ),
        body: Center(
          child: Container(
            height: 220.0,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20.0, 28.0, 20.0, 28.0),
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30.0),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/background.jpg"),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Wireframe,concept,\n& reference.pdf",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(28.0)),
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 12.0, top: 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.arrow_downward_rounded,
                        size: 20.0,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "Download",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
