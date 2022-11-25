import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmamanagementsystem/reusable/imagecard.dart';
import 'package:pharmamanagementsystem/reusable/menucard.dart';
import 'package:pharmamanagementsystem/reusable/screentitle.dart';
import 'package:pharmamanagementsystem/reusable/userinputcard.dart';

class listofclient extends StatefulWidget {
  _listofclient createState() => _listofclient();
}

class _listofclient extends State<listofclient>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xFF7AB4BD),
     body: SingleChildScrollView(
       child: Column(
         children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               const screentitle(title: 'Order Clerk'),
               Container(
                 alignment: Alignment.center,
                 height: 70.0,
                 child: SizedBox(
                   child: TextButton(
                     onPressed: () {},
                     style: TextButton.styleFrom(backgroundColor: Colors.red),
                     child: const Text('Logout',style: TextStyle(
                     fontSize: 17.0,color: Colors.black87),
                   ),),
                   ),
                 ),
             ],
           ),
           Column(
             children: const <Widget>[
               imagecard(),
             ],
           ),
           Container(
             color: const Color(0xFFc3eaf0),
             child: Row(
               children:const <Widget>[
                 ButtonBar(
                   alignment: MainAxisAlignment.center,
                   children: <Widget>[
                     menuoption(
                         menutext: 'Client', padlef: 70.0, autofocus: true),
                     menuoption(
                         menutext: 'Orders', padlef: 80.0, autofocus: false)
                   ],
                 )
               ],
             ),
           ),
           Column(
             children: <Widget>[
               Container(
                 padding: EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
                 alignment: Alignment.centerLeft,
                 child: const Text(
                   'List Of Clients',
                   style: TextStyle(
                       fontSize: 17.0,
                       color: Colors.black87,
                       fontWeight: FontWeight.bold),
                 ),
               )
             ],
           ),
           Row(
             children: const [
               // scrollabledatatable(),
             ],
           ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
             Padding(padding: EdgeInsets.only(top: 20.0),
               child: ButtonBar(
                 children: <Widget>[
                   SizedBox(
                     width: 130.0,
                     height: 35.0,
                     child: ElevatedButton(
                       onPressed: () {},
                       style: TextButton.styleFrom(
                           backgroundColor: const Color(0xFFe6ea80)),
                       child:const Text(
                         'Add Client',
                         style:
                         TextStyle(color: Colors.black87, fontSize: 15.0),
                       ),
                     ),
                   ),
                   Spacer(
                     flex: 2,
                   ),

                   SizedBox(
                     width: 130.0,
                     height: 35.0,
                     child: ElevatedButton(
                       onPressed: () {},
                       style: TextButton.styleFrom(
                           backgroundColor: const Color(0xFFe6ea80)),
                       child: const Text(
                         'Update/Delete',
                         style:
                         TextStyle(color: Colors.black87, fontSize: 15.0),
                       ),
                     ),
                   ),
                 ],
               ),)
           ],
         )


         ],
       )
     )
    );
  }
}


// class scrollabledatatable extends StatelessWidget {
//   const scrollabledatatable({
//     Key? key,
//   }) : super(key: key);