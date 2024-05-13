import 'package:first_flutter_app/screens/note_detail.dart';
import 'package:flutter/material.dart';

class NoteList extends StatefulWidget{
  const NoteList({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NoteListState() ;
  }

}



class NoteListState extends State<NoteList>{

  int count = 0 ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToDetail(context, 'Add Note') ;
        },

        tooltip: 'Add Note',
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add, color: Colors.white,),

      ),
    );

    throw UnimplementedError();
  }

  ListView getNoteListView(){

    TextStyle? titleStyle = Theme.of(context).textTheme.displayMedium ;

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position){
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title:Text('Dummy title', style: titleStyle,),
            subtitle: const Text('Dummy Date'),
            trailing: const Icon(Icons.delete, color: Colors.grey,),
            onTap: (){
              navigateToDetail(context, 'Edit Note') ;

            },

          ),
        );
      },
    );

  }


  void navigateToDetail(BuildContext context, String title){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return  NoteDetail(title);
    }));
  }

}