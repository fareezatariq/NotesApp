import 'package:flutter/material.dart';
import 'package:notes_app/databas_handler.dart';
import 'package:notes_app/notes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 DBHelper? dbHelper;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbHelper=DBHelper();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Notes"),
        centerTitle: true,
      ),
      body: Column(
        children: [

        ],
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
dbHelper!.insert(
  NotesModel(title: 'First Node', age: 22, description: "My first SQL app", email: 'ashley@gmail.com')
).then((value){
        print('data added');}).onError((error, stackTrace){
          print(error.toString());
        });
      },
      child: const Icon(Icons.add),
    ),
    );
  }
}
