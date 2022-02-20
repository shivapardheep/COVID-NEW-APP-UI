import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var dropDownValue = 'USA';
  var _items = <String>['USA', 'UK', 'IN', 'CN', 'FR'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF473E97),
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.35,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                color: Color(0xFF473E97),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "COVID-19",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            height: 50,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  DropdownButton<String>(
                                    icon: Icon(Icons.arrow_drop_down),
                                    items: _items
                                        .map((String item) =>
                                            DropdownMenuItem<String>(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 12,
                                                      child: Image.asset(
                                                          "assets/${item.toLowerCase()}_flag.png"),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(item),
                                                  ],
                                                ),
                                                value: item))
                                        .toList(),
                                    onChanged: (var value) {
                                      setState(() {
                                        this.dropDownValue = value.toString();
                                      });
                                    },
                                    value: dropDownValue,
                                    underline: Container(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Are you feeling sick?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "COVID-19 affects different people in different ways. "
                        "Most infected people will develop mild to moderate "
                        "illness and recover without hospitalization.",
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlatButton.icon(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                color: Colors.red,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  "Call Now",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            FlatButton.icon(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                color: Colors.blue,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.sms_outlined,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  "Send SMS",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepOrange,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
