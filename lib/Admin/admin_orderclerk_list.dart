import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_orderclerk_add.dart';

class adminOrderclerkList extends StatefulWidget {
  const adminOrderclerkList({Key? key}) : super(key: key);

  @override
  State<adminOrderclerkList> createState() => _adminOrderclerkListState();
}

class _adminOrderclerkListState extends State<adminOrderclerkList> {
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
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    height: 500.0,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 20.0,
                            color: Color(0xFF90C8AC),
                          )
                        ]),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: <Widget>[

                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: FloatingActionButton.extended(
                      backgroundColor: Color(0xFF3A8891),
                      onPressed: () {},
                      label: Text(
                        'Update User',
                        style: GoogleFonts.ubuntu(),),

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: FloatingActionButton.extended(
                      backgroundColor: Color(0xFF3A8891),
                      onPressed: () {},
                      label: Text(
                        'Delete User',
                        style: GoogleFonts.ubuntu(),),

                    ),
                  )
                ],
              )
            ],
          ),
          ),
        )
    );
  }
}
