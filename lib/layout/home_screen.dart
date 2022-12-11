import 'package:flutter/material.dart';
import 'package:todo_app/layout/add_task_bottom_sheet.dart';
import 'package:todo_app/modules/settings/settings.dart';
import 'package:todo_app/modules/tasks_list/tasks_list.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  static const String routeName='home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}
  int currentIndex=0;

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Route Tasks',)),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 9,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          currentIndex: currentIndex,
          onTap: (index){
            currentIndex=index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list,size: 30),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings,size: 30),label: ''),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 4
          )
        ),
        onPressed: (){
          showAddTaskBottomSheet();
        },
      child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[currentIndex],
    );
  }
  List<Widget> tabs=[tasksList(),settingsScreen(),];

  void showAddTaskBottomSheet(){

    showModalBottomSheet(context: context,isScrollControlled: true, builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height*0.67 ,
          child: AddTaskBottomSheet()
      );
    },);
  }
}
