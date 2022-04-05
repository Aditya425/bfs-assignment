import 'package:bfs_assignment/modal/expense.dart';
import 'package:bfs_assignment/modal/get_icon.dart';
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
    //dummy data
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Rent"),
            date: "4 Mar", expenseName: "Rent",
            expenseType: "expenseType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("transport"),
            date: "4 Mar", expenseName: "transport",
            expenseType: "expenseType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Savings"),
            date: "4 Mar", expenseName: "Savings",
            expenseType: "expenseType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Bills / Utility"),
            date: "4 Mar", expenseName: "Bills / Utility",
            expenseType: "expenseType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Entertainment"),
            date: "4 Mar", expenseName: "Entertainment",
            expenseType: "expenseType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Domestic Help"),
            date: "4 Mar", expenseName: "Domestic Help",
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
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 12.0),
                            child: Text(
                              "${list[index].expenseName}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                            ),
                          ),
                          subtitle: Row(
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
                          trailing: Text(
                            "₹${list[index].myShare}",
                            style: TextStyle(
                                color: Color(0xffE1E1E1),
                                fontSize: 20
                            ),
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
