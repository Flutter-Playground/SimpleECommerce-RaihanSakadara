import 'package:flutter/material.dart';
import 'detailproduk1.dart';
import 'detailproduk2.dart';
import 'cart1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Shopping'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _menu1() {
    return Container(
        padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Text('Branded Bucket', style: TextStyle(fontSize: 20)),
                SizedBox(
                  width: 170,
                ),
                Row(
                  children: [
                    Text('See All', style: TextStyle(color: Colors.grey[500]))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                    width: 180,
                    height: 350,
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
                        image: AssetImage('assets/images/1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => detailproduk1()),
                    );
                  },
                ),
                Row(
                  children: [
                    InkWell(
                        child: Container(
                          padding: EdgeInsets.only(top: 30, left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(children: [
                                Text('Beautiful Fashion',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    )),
                              ]),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: [
                                Text('Bucket',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black45)),
                              ]),
                              SizedBox(
                                height: 30,
                              ),
                              Row(children: [
                                Text(
                                  '\$5500',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.red),
                                )
                              ]),
                              SizedBox(
                                height: 30,
                              ),
                              Row(children: [
                                Text(
                                  '#Cotton #polyster',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black45),
                                )
                              ]),
                              SizedBox(
                                height: 10,
                              ),
                              Row(children: [
                                Text(
                                  '#Branded design',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black45),
                                )
                              ]),
                            ],
                          ),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(3, 4), // changes position of shadow
                              ),
                            ],
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => detailproduk1()),
                          );
                        }),
                  ],
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                    width: 180,
                    height: 350,
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => detailproduk2()),
                    );
                  },
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.only(top: 30, left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text('Cute Fashion',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              Text('Bucket',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black45)),
                            ]),
                            SizedBox(
                              height: 30,
                            ),
                            Row(children: [
                              Text(
                                '\$7500',
                                style:
                                    TextStyle(fontSize: 30, color: Colors.red),
                              )
                            ]),
                            SizedBox(
                              height: 30,
                            ),
                            Row(children: [
                              Text(
                                '#Cotton #polyster',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black45),
                              )
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Row(children: [
                              Text(
                                '#Branded design',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black45),
                              )
                            ]),
                          ],
                        ),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(3, 4), // changes position of shadow
                            ),
                          ],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => detailproduk2()),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: true,
          backgroundColor: Colors.grey[300],
          title: Text('Shopping',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.filter_list_rounded, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cart1()),
                );
              },
            ),
          ],
          bottom: TabBar(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            indicatorColor: Colors.transparent,
            tabs: [
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    borderSide: const BorderSide(
                      color: Colors.black54,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black54,
                  ),
                  labelText: "Search",
                  suffixIcon: Icon(
                    Icons.mic,
                    size: 30,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    _menu1(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
