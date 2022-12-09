import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class adminOrderList extends StatefulWidget {
  const adminOrderList({Key? key}) : super(key: key);

  @override
  State<adminOrderList> createState() => _adminOrderListState();
}

class _adminOrderListState extends State<adminOrderList> {

  Query dbRef = FirebaseDatabase.instance.ref().child('Orders');
  DatabaseReference reference =
  FirebaseDatabase.instance.ref().child('Orders');

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
            student['orderid'],
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            student['orderdate'],
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),Text(
            student['clientname'],
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),Text(
            student['productname'],
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),Text(
            student['orderquantity'],
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            child: Text(
              student['Totalprice'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            onTap:() {},
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
        body:
        SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[

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
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                          child: Text(
                            'LIST ORDERS',
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
                    child:
                    FirebaseAnimatedList(
                      query: dbRef,
                      itemBuilder: (BuildContext context, DataSnapshot
                      snapshot, Animation<double> animation, int index) {

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
