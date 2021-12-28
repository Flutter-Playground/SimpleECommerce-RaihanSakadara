import 'package:flutter/material.dart';

class detailproduk2 extends StatelessWidget {
  Widget _detailproduk2() {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(3, 4), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text('\$7500', style: TextStyle(fontSize: 30, color: Colors.red)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text('Womens Casual Purse',
                  style: TextStyle(fontSize: 30, color: Colors.black)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                'fashion atau busana adalah segala sesuatu yang dikenakan pada tubuh, baik dengan maksud melindungi tubuh maupun memperindah penampilan tubuh. Busana pada umumnya suatu ekspresi atau ungkapan pribadi yang tidak selalu sama untuk setiap orang.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(children: [
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(10),
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/4.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/5.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/6.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          ]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: Text('Cute Fashion',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            backgroundColor: Colors.grey[50],
            elevation: 0,
            actions: [
              IconButton(
                icon: Icon(Icons.search, color: Colors.black45),
                onPressed: () {},
              ),
              IconButton(
                icon:
                    Icon(Icons.shopping_basket_rounded, color: Colors.black45),
                onPressed: () {},
              ),
            ],
            leading: IconButton(
              icon:
                  Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black45),
              onPressed: () => Navigator.of(context).pop(),
            )),
        body: Container(
          child: ListView(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    _detailproduk2(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          //color: Colors.black,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          width: 50,
          height: 60,
          child: InkWell(
            child: Center(
              child: Text('Add to Cart',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center),
            ),
            onTap: () {},
          ),
          decoration: BoxDecoration(
            color: Colors.yellow[800],
            borderRadius: BorderRadius.circular(200),
          ),
        ),
      );
}
