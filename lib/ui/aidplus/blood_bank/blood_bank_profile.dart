import 'package:flutter/material.dart';

class BloodBankProfile extends StatefulWidget {
  const BloodBankProfile({Key? key}) : super(key: key);

  @override
  State<BloodBankProfile> createState() => _BloodBankProfileState();
}

class _BloodBankProfileState extends State<BloodBankProfile> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final _tabs = [
      Tab(text: 'Info'),
      Tab(text: 'Services'),
      Tab(text: 'Donor List'),
      Tab(text: 'Review')
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Blood Bank Profile"),
          leading: Icon(Icons.arrow_back),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Image.asset("assets/images/blood_bank_profile_bg_image.png"),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2, top: 2, right: 2, bottom: 2),
                            child: Icon(Icons.heart_broken, color: Colors.red),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2, top: 2, right: 2, bottom: 2),
                            child: Icon(Icons.share),
                          ),
                        ],
                      ),
                      Positioned(
                        left: 10,
                        bottom: -50,
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              "assets/images/blood_bank_profile_image.png",
                              height: 100,
                              width: 110,
                            ),
                            Positioned(
                              bottom: -10,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 2,right: 10,bottom: 2),
                                  child: Text(
                                    "Open",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: -50,
                          left: 130,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),

                          )
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 130,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ASA Blood bank",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,

                                ),
                              ),
                              Text(
                                "Shymoli, Dhaka",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Emergency : ",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14
                                    ),
                                  ),
                                  Text(
                                    "01612345678",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/images/google_map.png",
                          width: 29,
                          height: 29,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Registration No",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13
                              ),
                            ),
                          ),
                          Text(
                            "00190200910",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Service Time",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13
                              ),
                            ),
                          ),
                          Text(
                            "24 hrs",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),

                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Total Ratings (235)",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "4.9",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black,
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 5, right: 15, bottom: 5),
                      child: Row(
                        children: [
                          Text(
                            "Notice",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Text(
                              "60% flat discount on every test",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: kToolbarHeight + 8.0,
                    padding:
                    const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                    ),
                    child: TabBar(
                      controller: _tabController,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0)),
                          color: Colors.white),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.white,
                      tabs: _tabs,
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ) 
    );
  }
}
