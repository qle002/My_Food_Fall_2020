// import 'package:MyFoodLogin/view/FridgePage.dart';
// import 'package:flutter/material.dart';

// class FreezerPage extends StatefulWidget {
//   FreezerPage({Key key}) : super(key: key);

//   @override
//   _FreezerPageState createState() => _FreezerPageState();
// }

// class _FreezerPageState extends State<FreezerPage> {
//   TextEditingController _textController = TextEditingController();

//   List<String> foodItem = <String>[
//     /*
//     'Ice Cream',
//     'Hot Pockets',
//     'Ice Pops',
//     'green peas',
//     'Frozen Pizza',
//     'TV dinner',
//     'Stouffers',
//     'Hungry Man',
//     'Chicken Nuggets',
//     'Lasagna',
//     'Kids Cuisine',
//     'Frozen Chicken',
//     'frozen blueberries',
//     'fudge pops',
//     'Mixed Vegtables',*/
//   ];
//   List<int> amount = <int>[/*2, 0, 10, 6, 52, 4, 0, 2, 1, 2, 3, 4, 5, 6, 7*/];

// onSubmit() {
//   setState(() {
//     foodItem.add(_textController.text);
//     amount.add(0);
//   });
// }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         resizeToAvoidBottomPadding: false,
//         body: Container(
//             constraints: BoxConstraints.expand(),
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage(
//                         "assets/images/fridge_section_background.png"),
//                     fit: BoxFit.fill)),
//             child: Column(
//               children: <Widget>[
//                 SizedBox(
//                   height: 40,
//                 ),

//                 //Top of page
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     //Back button
//                     InkWell(
//                         onTap: () => Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => FridgePage())),
//                         child: Container(
//                             decoration: BoxDecoration(
//                                 color: Colors.black,
//                                 border: Border.all(width: 3),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             margin: EdgeInsets.only(
//                                 left: 20, bottom: 30, top: 10, right: 10),
//                             width: 60,
//                             height: 30,
//                             child: Center(
//                               child: Text(
//                                 "Back",
//                                 textAlign: TextAlign.center,
//                                 style: new TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white),
//                               ),
//                             ))),
//                     //Edit Button
//                     InkWell(
//                         onTap: () => print("Edit button pressed"),
//                         child: Container(
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage(
//                                       "assets/images/edit_button.png"),
//                                   fit: BoxFit.fill)),
//                           margin: EdgeInsets.only(
//                               left: 10, bottom: 30, top: 10, right: 30),
//                           width: 30,
//                           height: 30,
//                         )),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     //Textbox to add food
//                     Container(
//                       width: 275,
//                       height: 50,
//                       margin: EdgeInsets.only(left: 20, right: 20),
//                       child: TextField(
//                         controller: _textController,
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Color(0xffe0f7f3),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide:
//                                   BorderSide(color: Colors.black, width: 3.0),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide:
//                                   BorderSide(color: Colors.blue, width: 3.0),
//                             ),
//                             hintText: 'Enter a Food Item Here'),
//                       ),
//                     ),
//                     //Add Item Button
//                     InkWell(
//                         onTap: () => onSubmit(),
//                         child: Container(
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage(
//                                       "assets/images/add_button.png"),
//                                   fit: BoxFit.fill)),
//                           width: 40,
//                           height: 40,
//                         )),
//                   ],
//                 ),
//                 //List of items
//                 Row(
//                   children: [
//                     Container(
//                       child: Padding(
//                           padding: EdgeInsets.only(left: 26.5, top: 49),
//                           child: Container(
//                             child: ListView.builder(
//                                 padding: const EdgeInsets.all(8),
//                                 itemCount: foodItem.length,
//                                 itemBuilder: (BuildContext context, int index) {
//                                   return Container(
//                                     height: 50,
//                                     margin: EdgeInsets.all(2),
//                                     color: Colors.white,
//                                     child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Container(
//                                               padding:
//                                                   EdgeInsets.only(left: 10),
//                                               child: Text(
//                                                 '${foodItem[index]}',
//                                                 style: TextStyle(fontSize: 18),
//                                               )),
//                                           Container(
//                                               padding:
//                                                   EdgeInsets.only(right: 10),
//                                               child: Text(
//                                                 '${amount[index]}',
//                                                 style: TextStyle(fontSize: 18),
//                                               )),
//                                         ]),
//                                   );
//                                 }),
//                             width: 353,
//                             height: 481,
//                             decoration: BoxDecoration(
//                                 //color: Color(0xff3f6576),
//                                 color: Colors.blue[200],
//                                 borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(15),
//                                   topRight: Radius.circular(15),
//                                   bottomRight: Radius.circular(15),
//                                 )),
//                           )),
//                     )
//                   ],
//                 ),
//               ],
//             )));
//   }
// }

import 'package:MyFoodLogin/view/FridgePage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FreezerPage extends StatefulWidget {
  FreezerPage({Key key}) : super(key: key);

  @override
  _FreezerPageState createState() => _FreezerPageState();
}

class _FreezerPageState extends State<FreezerPage> {
  //FirebaseFirestore db = FirebaseFirestore.getInstance();
  TextEditingController _textController = TextEditingController();

  Future getPosts() async {
    var db = FirebaseFirestore.instance;

    QuerySnapshot qn = await db
        .collection("Users")
        .doc("Username02")
        .collection("Drawer")
        .get();

    return qn.docs;
  }

  List<int> amount = <int>[/*2, 0, 10, 6, 52, 4, 0, 2, 1, 2, 3, 4, 5, 6, 7*/];
  List<String> foodItem = <String>[];

  onSubmit() {
    setState(() {
      FirebaseFirestore.instance
          .collection("Users")
          .doc("Username02")
          .collection("Drawer")
          .doc(_textController.text)
          .set({
        "Name": _textController.text,
        "Type": "Freezer",
      });
    });
  }

  /* public void getMultipleDocs(){
    FirebaseFirestore.instance
          .collection("Users")
          .doc("Username02")
          .collection("Drawer").whereEqualTo("Type", "Freezer").get().addOnCompleteListener(new OnCompleteListener<QuerySnapshot>() {
            @Override
                    public void onComplete(@NonNull Task<QuerySnapshot> task) {
                        if (task.isSuccessful()) {
                            for (QueryDocumentSnapshot document : task.getResult()) {
                                Log.d(TAG, document.getId() + " => " + document.getData());
                            }
                        } else {
                            Log.d(TAG, "Error getting documents: ", task.getException());
                        }
                    }
                });
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/fridge_section_background.png"),
                    fit: BoxFit.fill)),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                //Top of page
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Back button
                    InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FridgePage())),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                border: Border.all(width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            margin: EdgeInsets.only(
                                left: 20, bottom: 30, top: 10, right: 10),
                            width: 60,
                            height: 30,
                            child: Center(
                              child: Text(
                                "Back",
                                textAlign: TextAlign.center,
                                style: new TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ))),
                    //Edit Button
                    InkWell(
                        onTap: () => print("Edit button pressed"),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/edit_button.png"),
                                  fit: BoxFit.fill)),
                          margin: EdgeInsets.only(
                              left: 10, bottom: 24, top: 10, right: 30),
                          width: 30,
                          height: 30,
                        )),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //Textbox to add food
                    Container(
                      width: 275,
                      height: 50,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        controller: _textController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffe0f7f3),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 3.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 3.0),
                            ),
                            hintText: 'Enter a Food Item Here'),
                      ),
                    ),
                    //Add Item Button

                    InkWell(
                        onTap: () => onSubmit(),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/add_button.png"),
                                  fit: BoxFit.fill)),
                          width: 40,
                          height: 40,
                        )),
                  ],
                ),
                //List of items
                Row(
                  children: [
                    Container(
                        child: Padding(
                      padding: EdgeInsets.only(left: 26.5, top: 49),
                      child: Container(
                          width: 353,
                          height: 481,
                          decoration: BoxDecoration(
                              //color: Color(0xff3f6576),
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: FutureBuilder(
                            future: getPosts(),
                            builder: (_, snapshot) {
                              print("testing");
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                  child: Text("Loading..."),
                                );
                              } else {
                                for (var item in snapshot.data) {
                                  print(item.data);
                                }
                                return ListView.builder(
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (_, index) {
                                      print(snapshot.data[0].get("Name"));
                                      return ListTile(
                                        title: Text(
                                            snapshot.data[index].get("Name")),
                                      );
                                    });
                              }
                            },
                          )),
                    ))
                  ],
                ),
              ],
            )));
  }
}
