import 'package:flutter/material.dart';

class cart1 extends StatefulWidget {
  @override
  _cart1state createState() => _cart1state();
}

class _cart1state extends State<cart1> {
  final items = ['Black', 'Red', 'White', 'Yellow'];
  String? value;
  final items2 = ['S', 'M', 'L', 'XL', 'XXL'];
  String? value2;

  Widget _cart() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Row(children: [
            Container(
              width: 190,
              decoration: BoxDecoration(),
              child: DropdownButton<String>(
                hint: Text('Black'),
                value: value,
                isExpanded: true,
                iconSize: 32,
                icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                items: items.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              ),
            ),
          ]),
          Row(children: [
            Container(
              width: 190,
              decoration: BoxDecoration(),
              child: DropdownButton<String>(
                hint: Text('XXL'),
                value: value2,
                isExpanded: true,
                iconSize: 32,
                icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                items: items2.map(buildMenuItem2).toList(),
                onChanged: (value2) => setState(() => this.value2 = value2),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  Widget _deskripsi() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Kapka Valour',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 30,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 30,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 30,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 30,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 30,
              ),
              Text(' 5.0 stars',
                  style: TextStyle(color: Colors.black45, fontSize: 16)),
              SizedBox(
                width: 40,
              ),
              Text(' \$5500',
                  style: TextStyle(color: Colors.red, fontSize: 30)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Description',
                style: TextStyle(color: Colors.black54, fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                'Deskripsi produk adalah sekumpulan informasi yang menjelaskan produk Anda. Beberapa contoh informasi deskripsi produk adalah spesifikasi produk, cara menggunakan produk, kelebihan produk, dll. Manfaat utama dari deskripsi produk adalah agar bisa memperkenalkan produk Anda secara lebih spesifik.',
                style: TextStyle(color: Colors.black54, fontSize: 15),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      );

  DropdownMenuItem<String> buildMenuItem2(String item2) => DropdownMenuItem(
        value: item2,
        child: Text(item2,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(300),
          child: AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/7.jpg'),
                        fit: BoxFit.cover)),
              ),
              title: Text('Back to Shopping',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              backgroundColor: Colors.grey[50],
              elevation: 0,
              actions: [
                IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.black45),
                  onPressed: () {},
                ),
              ],
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black45),
                onPressed: () => Navigator.of(context).pop(),
              )),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    _cart(),
                    _deskripsi(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(0),
          child: Material(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    //padding: EdgeInsets.all(10),
                    width: 201,
                    height: 60,
                    color: Colors.redAccent,
                    child: InkWell(
                      child: Center(
                        child: Text('Buy',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 0),
                    width: 201,
                    height: 60,
                    color: Colors.black54,
                    child: InkWell(
                      child: Center(
                        child: Text(
                          'Add a bag',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
