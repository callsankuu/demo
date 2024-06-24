import 'package:flutter/material.dart';
class instagram extends StatefulWidget {
  const instagram({super.key});

  @override
  State<instagram> createState() => _instagramState();
}

class _instagramState extends State<instagram> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
           length:4,
          child: Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("call_me_sankuu"),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 45),
                  child: Icon(Icons.arrow_drop_down),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.query_stats_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add_box_outlined),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.menu),
                )
              ],
            ),
            body: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
                {
                  return [
                    SliverToBoxAdapter(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 150,
                                  width: 400,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(90),
                                            image: DecorationImage(
                                              image: AssetImage("assets/vijay2.jpeg"),
                                              fit: BoxFit.fill,
                                            )
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 55),
                                            child: Text("17",style: TextStyle(fontWeight: FontWeight.bold),),
                                          ),
                                          Text("Posts",style: TextStyle(fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      SizedBox(width: 7,),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 55),
                                            child: Text("376",style: TextStyle(fontWeight: FontWeight.bold),),
                                          ),
                                          Text("Followers",style: TextStyle(fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      SizedBox(width: 7,),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 55),
                                            child: Text("529",style: TextStyle(fontWeight: FontWeight.bold),),
                                          ),
                                          Text("Following",style: TextStyle(fontWeight: FontWeight.bold),)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("call me sankuu",
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            height: 30,
                                            width: 150,
                                            child: Center(child: Text("Edit Profile")),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.grey[200]
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 7,),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                          height: 30,
                                          width: 150,
                                          child: Center(child: Text("Share Profile")),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.grey[200],
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                          height: 30,
                                          width: 50,
                                          child: Icon(Icons.person),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.grey[200]
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 130,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 8,
                                  itemBuilder: (BuildContext context, int index)
                                  {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                              backgroundImage: AssetImage("assets/travel.png"),
                                              radius: 40
                                          ),
                                          Text("goa trip"),
                                        ],
                                      ),
                                    );
                                  }
                              ),
                            )
                          ]
                      ),
                    ),
                  ];
                },
                body: Column(
                 children: [
                  TabBar(tabs: [
                   Icon(Icons.apps),
                   Icon(Icons.ondemand_video_sharp),
                   Icon(Icons.account_box)
                ]),
                 SizedBox(height: 10,),
                 Expanded(
                  child: TabBarView(
                      children: [
                        Container(
                          height: 400,
                          child: GridView.builder(
                              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 3,
                                  crossAxisSpacing: 3,
                                  mainAxisExtent: 130
                              ),
                              itemCount: 19,
                              itemBuilder: (BuildContext, index)
                              {
                                return Container(
                                  height:80,
                                  width:80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/vijay1.jpeg"),
                                        fit: BoxFit.fill
                                    ),
                                  ),
                                );
                              }
                          ),
                        ),
                        GridView.builder(
                            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 3,
                                crossAxisSpacing: 3,
                                mainAxisExtent: 130
                            ),
                            itemCount: 7,
                            itemBuilder: (BuildContext, index)
                            {
                              return Container(
                                height:80,
                                width:80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/vijay2.jpeg"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              );
                            }
                        ),
                        GridView.builder(
                            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 3,
                                crossAxisSpacing: 3,
                                mainAxisExtent: 130
                            ),
                            itemCount: 17,
                            itemBuilder: (BuildContext, index)
                            {
                              return Container(
                                height:80,
                                width:80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/vijay.png"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                              );
                            }
                        ),
                      ]
                  ),
                )
              ],
            )
            ),
          ),
        ));
  }
}


