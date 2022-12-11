import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  var titleController = TextEditingController();

  var descriptionController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add New Task',
          textAlign: TextAlign.center
          ,style: Theme.of(context).textTheme.subtitle1?.copyWith(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 10,),
          Form(
            key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: titleController,
                    validator: (text){
                      if(text != null && text.isEmpty){
                        return 'Please Enter Task Title';
                      }
                      return null;
                    },
                    decoration: InputDecoration(labelText: 'Title',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),

                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: descriptionController,
                    validator: (text){
                      if(text != null && text.isEmpty){
                        return 'Please Enter Task Description';
                      }
                      return null;
                    },
                    maxLines: 4,
                    decoration: InputDecoration(labelText: 'Description',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),

                  ),
                ],
             ),
          ),
          SizedBox(height: 10,),
          Text('Select Date',style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.blue),),
          SizedBox(height: 15,),
          Text('25/5/2025',textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle1,),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: (){
              if(formKey.currentState!.validate()){
                print('Ahmed');
              }
            },
            child: Text('Add Task'),
          ),
        ],
      ),
    );
  }
}
