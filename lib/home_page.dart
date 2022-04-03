import 'package:bfs_assignment/modal/expense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 1;
  List<Expense> list = [];
  @override
  void initState() {
    super.initState();
    list.add(
        Expense(mainIcon: Icons.shopping_cart,
            date: "4 Mar", expenseName: "expenseName",
            expenseType: "expenseType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: Icons.shopping_cart,
            date: "4 Mar", expenseName: "expenseName",
            expenseType: "expenseType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: Icons.shopping_cart,
            date: "4 Mar", expenseName: "expenseName",
            expenseType: "expenseType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 1;
                        });
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff1F1F1F),
                          border: Border.all(
                            color: selected == 1 ? Color(0xff706DAC) : Colors.transparent
                          ),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        child: Center(
                          child: Text(
                            "All",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 2;
                        });
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff1F1F1F),
                            border: Border.all(
                                color: selected == 2 ? Color(0xff706DAC) : Colors.transparent
                            ),
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: Center(
                          child: Text(
                            "Expenses",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 3;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Color(0xff1F1F1F),
                            border: Border.all(
                                color: selected == 3 ?  Color(0xff706DAC) : Colors.transparent
                            ),
                            borderRadius: BorderRadius.circular(7)
                        ),
                        child: Center(
                          child: Text(
                            "Payments",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(13),
                      child: Container(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        decoration: BoxDecoration(
                          color: Color(0xff1F1F1F),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xff2C2C2C),
                            child: Icon(
                              list[index].mainIcon,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          title: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff2C2C2C),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.white
                                  )
                                ),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      list[index].date,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xff2C2C2C),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: Colors.white
                                    )
                                ),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Icon(
                                      list[index].expenseTypeIcon,
                                      color: Color(0xffFFDE62),
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      list[index].expenseType,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          subtitle: Text(
                            "${list[index].expenseName}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),
                          ),
                          trailing: Column(
                            children: [
                              Text(
                                "Your share",
                                style: TextStyle(
                                  color: Color(0xff989898)
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "₹${list[index].myShare}",
                                style: TextStyle(
                                    color: Color(0xffE1E1E1),
                                  fontSize: 20
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
