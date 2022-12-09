import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class UpdateRecord extends StatefulWidget {

  const UpdateRecord({Key? key, required this.productKey}) : super(key: key);

  final String productKey;

  @override
  State<UpdateRecord> createState() => _UpdateRecordState();
}

class _UpdateRecordState extends State<UpdateRecord> {

  final  productidController = TextEditingController();
  final  productnameController= TextEditingController();
  final  productdateController =TextEditingController();
  final  productquantityController =TextEditingController();
  final  productpriceController =TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Products');
    getProductsData();
  }

  void getProductsData() async {
    DataSnapshot snapshot = await dbRef.child(widget.productKey).get();

    Map product = snapshot.value as Map;

    productidController.text = product['productid'];
    productnameController.text = product['productname'];
    productdateController.text = product['productdate'];
    productquantityController.text = product['productquantity'];
    productpriceController.text = product['productprice'];

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updating record'),
      ),
      body:  Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Update Information',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: productidController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Product Id',
                  hintText: 'Enter Product Id',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: productnameController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Product Name',
                  hintText: 'Enter Product Id',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: productquantityController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Product Quantity',
                  hintText: 'Enter Product Quantity',
                ),
              ),const SizedBox(
                height: 30,
              ),
              TextField(
                controller: productpriceController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Product Price',
                  hintText: 'Enter Product Price',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: () {

                  Map<String, String> products = {
                    'productid': productidController.text,
                    'productname': productnameController.text,
                    'productquantity': productquantityController.text,
                    'productprice': productpriceController.text

                  };

                  dbRef.child(widget.productKey).update(products)
                      .then((value) => {
                    Navigator.pop(context)
                  });

                },
                child: const Text('Update Data'),
                color: Colors.blue,
                textColor: Colors.white,
                minWidth: 300,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}