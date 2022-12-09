import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Stock_Manager/Update.dart';
import 'admin_orderclerk_add.dart';

class adminOrderclerkList extends StatefulWidget {
  const adminOrderclerkList({Key? key}) : super(key: key);

  @override
  State<adminOrderclerkList> createState() => _adminOrderclerkListState();
}

class _adminOrderclerkListState extends State<adminOrderclerkList> {

  Query dbRef = FirebaseDatabase.instance.ref().child('Orderclerk');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('Orderclerk');
  Widget listItem({required Map student}) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(5.0, 5.0,),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            student['userid'],
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            child: Text(
              student['firstname'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            onTap: ()
            {

            },
          ),

          const SizedBox(
            height: 5,
          ),Text(
            student['lastname'],
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),Text(
            student['email'],
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),Text(
            student['phonenumber'],
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),Text(
            student['password'],
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => UpdateRecord(productKey: student['key'])));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              GestureDetector(
                onTap: () {
                  reference.child(student['key']).remove();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.red[700],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2F8F9D),
          shadowColor: Color(0xFF82DBD8),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back_ios)),
          centerTitle: true,
          title: Text(
            'Admin',
            style: GoogleFonts.ubuntu(fontSize: 25.0),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
             child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      child: Container(
                        height: 70.0,
                        margin: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                            color: Color(0xFF2F8F9D),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 20.0,
                                color: Color(0xFF7A9EB1),
                              )
                            ]),
                        child: Row(
                          children: <Widget>[
                            Padding(
                                padding:
                                EdgeInsets.symmetric(horizontal: 2, vertical: 17),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    "assets/logo/add_user.png",
                                    width: 45,
                                    height: 45,
                                  ),
                                )),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: TextButton(
                                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => adminOrderClerkAdd())) ,
                                  child: Text("Add User",
                                    style: GoogleFonts.ubuntu(
                                        fontSize: 17, color: Colors.white), ),
                                ))
                          ],
                        ),
                      )),
                  Expanded(
                      child: Container(
                        height: 70.0,
                        margin: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            color: Color(0xFF2F8F9D),
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 20.0,
                                color: Color(0xFF7A9EB1),
                              )
                            ]),
                        child: Row(
                          children: <Widget>[
                            Padding(
                                padding:
                                EdgeInsets.symmetric(horizontal: 2, vertical: 17),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    "assets/logo/list_user.png",
                                    width: 45,
                                    height: 45,
                                  ),
                                )),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  "List User",
                                  style: GoogleFonts.ubuntu(
                                      fontSize: 17, color: Colors.white),
                                ))
                          ],
                        ),
                      ))
                ],
              ),
              Row(children: <Widget>[
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: const Divider(
                        color: Colors.black,
                        height: 50,
                      )),
                ),
              ]),
              Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'LIST USERS',
                          style: GoogleFonts.ubuntu(fontSize: 18),
                        ),
                      ))
                ],
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 8,),
                  height: 540.0,
                  decoration: BoxDecoration(
                      color:    Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 20.0,
                          color: Color(0xFF90C8AC),
                        )
                      ]),
                  child: FirebaseAnimatedList(
                    query: dbRef,
                    itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {

                      Map student = snapshot.value as Map;
                      student['key'] = snapshot.key;

                      return listItem(student: student);

                    },

                  )
              ),

            ],
          ),
          ),
        )
    );
  }
}
