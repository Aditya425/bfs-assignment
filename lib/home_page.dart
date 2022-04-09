import 'package:bfs_assignment/modal/expense.dart';
import 'package:bfs_assignment/modal/get_icon.dart';
import 'package:bfs_assignment/widgets/drop_down.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
//test
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 1;
  List<Expense> list = [];
  List<String> items = ["Rent", "Bills / Utility", "Groceries",
    "Transport", "Domestic Help", "Other Needs", "Shopping", "Gym / Salon",
    "Entertainment", "Subscription", "Other Wants", "Savings"];

  @override
  void initState() {
    super.initState();
    //dummy data

    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Rent"),
            date: "4 Mar", expenseName: "Rent",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("transport"),
            date: "4 Mar", expenseName: "Transport",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Savings"),
            date: "4 Mar", expenseName: "Savings",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Bills / Utility"),
            date: "4 Mar", expenseName: "Bills / Utility",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Entertainment"),
            date: "4 Mar", expenseName: "Entertainment",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Domestic Help"),
            date: "4 Mar", expenseName: "Domestic Help",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Groceries"),
            date: "4 Mar", expenseName: "Groceries",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Domestic Help"),
            date: "4 Mar", expenseName: "Domestic Help",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Other Needs"),
            date: "4 Mar", expenseName: "Other Needs",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Shopping"),
            date: "4 Mar", expenseName: "Shopping",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Other Wants"),
            date: "4 Mar", expenseName: "Other Wants",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Shopping"),
            date: "4 Mar", expenseName: "Shopping",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
    );
    list.add(
        Expense(mainIcon: GetIcon.getRespIcon("Savings"),
            date: "4 Mar", expenseName: "Savings",
            merchantName: "merchantName", myShare: 1250, expenseTypeIcon: Icons.camera_enhance)
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
                        child: Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      DropDown(items, list[index].expenseName),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 30,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            isDense: true,
                                            contentPadding: EdgeInsets.all(1),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )

                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 20,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            isDense: true,
                                            contentPadding: EdgeInsets.all(1),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.delete
                                                , color: Colors.red,),
                                              onPressed: () {},
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            IconButton(
                                              icon: Icon(Icons.save
                                                , color: Colors.blue,),
                                              onPressed: () {},
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            RaisedButton(
                                              onPressed: () {},
                                              color: Color(0xffD7A601),
                                              child: Text(
                                                "Split",
                                                style: TextStyle(
                                                  color: Colors.white
                                                ),
                                              ),
                                              shape:RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20)
                                              ) ,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )

                                ],
                              )
                            ],
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
                              child: list[index].expenseName.contains(" ") ? FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${list[index].expenseName}",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17
                                  ),
                                ),
                              ) : Text(
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
                                  padding: EdgeInsets.only(bottom: 12),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.white
                                      )
                                  ),
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
                                        Flexible(
                                          fit: FlexFit.loose,
                                          child: Text(
                                            "${list[index].merchantName}",
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
