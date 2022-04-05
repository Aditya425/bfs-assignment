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
            merchantType: "merchantTypecfcfcc", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("transport"),
            date: "4 Mar", expenseName: "transport",
            merchantType: "merchantType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Savings"),
            date: "4 Mar", expenseName: "Savings",
            merchantType: "merchantType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Bills / Utility"),
            date: "4 Mar", expenseName: "Bills / Utility",
            merchantType: "merchantType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Entertainment"),
            date: "4 Mar", expenseName: "Entertainment",
            merchantType: "merchantType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Domestic Help"),
            date: "4 Mar", expenseName: "Domestic Help",
            merchantType: "merchantType", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      padding: EdgeInsets.all(9),
                      child: Container(
                        padding: EdgeInsets.only(top: 9, bottom: 9),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.green
                          )
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Icon(
                              list[index].mainIcon,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 12.0),
                            child: Text(
                              "${list[index].expenseName}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17
                              ),
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
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
                                      color: Colors.black,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      list[index].date,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                            ],
                          ),
                          trailing: Container(
                            width: 107,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "₹${list[index].myShare}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 97,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Icon(
                                          list[index].expenseTypeIcon,
                                          color: Colors.black,
                                          size: 15,
                                        ),
                                      ),
                                      FittedBox(
                                        child: Text(
                                          "${list[index].merchantType}",
                                          style: TextStyle(
                                            fontSize: 11
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
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
