import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget{
 // const NoteDetail({super.key});

  String appBarTitle ;
  NoteDetail(this.appBarTitle) ;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NoteDetailState(this.appBarTitle) ;
  }
  
}

class NoteDetailState extends State<NoteDetail>{
  String appBarTitle ;
  static var _priorities = ['High', 'Low'];
  TextEditingController titleController = TextEditingController() ;
  TextEditingController descriptionController = TextEditingController() ;

  NoteDetailState(this.appBarTitle) ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextStyle? textStyle= Theme.of(context).textTheme.titleMedium ;
    return Scaffold(
      appBar: AppBar(
        title:  Text(appBarTitle, style: const TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left:10.0, right: 10.0),
     child: ListView(
       children: <Widget>[
         ListTile(
           title: DropdownButton<String>(
             items: _priorities.map((String value) {
               return DropdownMenuItem<String>(
                 value: value,
                 child: Text(value),
               );
             }).toList(),
             style: textStyle,
             value: 'Low',
             onChanged: (value) {
               setState(() {

               });
             },
           ),
         ),

         Padding(
             padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
             child: TextField(
               controller: titleController,
               style: textStyle,
               onChanged: (value){

               },

               decoration: InputDecoration(
                 labelText: 'Title',
                 labelStyle: textStyle,
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5.0)
                 )
               ),
             ),
         ),

         Padding(
           padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
           child: TextField(
             controller: titleController,
             style: textStyle,
             onChanged: (value){

             },

             decoration: InputDecoration(
                 labelText: 'Description',
                 labelStyle: textStyle,
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(5.0)
                 )
             ),
           ),
         ),


         Padding(
           padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
           child: Row(
             children: <Widget>[
               Expanded(
                   child: ElevatedButton(
                     onPressed: () {

                     },
                     style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.purple),),
                     child: const Text('save', style: TextStyle(color: Colors.white),),
                   )
               ),

               Container(width: 5.0),

               Expanded(
                   child: ElevatedButton(
                     onPressed: () {

                     },
                     style: const ButtonStyle(
                       backgroundColor: MaterialStatePropertyAll<Color>(Colors.purple),
                       
                     ),
                     child: const Text('Delete', style: TextStyle(color: Colors.white),),


                   )
               ),



             ],
           ),
         )

       ],
     ),
      ),
    );
    throw UnimplementedError();
  }
  
}