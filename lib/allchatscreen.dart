import 'package:chat_ui/data.dart';
import 'package:chat_ui/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custompageroute.dart';
import 'individualchatscreen.dart';
class AllChatScreen extends StatelessWidget {
  const AllChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      /// app bar ////
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Whitetext54("Good Morning",13 ),
            Whitetext("Dev_73arner")
          ],
        ),
        actions: const [

          CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff091225),
            child: Icon(CupertinoIcons.search),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff091225),
            child: Icon(CupertinoIcons.ellipsis_vertical,),
          ),
          SizedBox(width: 10,),
        ],
      ),

      /// FAb/////
      floatingActionButton:
      Container(
          height: 90,
          width: 90,
          decoration: const  BoxDecoration(
            shape: BoxShape.circle,
            gradient:  LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.topLeft,
                colors:  [
                  Color(0xff2b77ea),
                  Color(0xff2896f9),
                  Color(0xff31c9fe),


                ]
            ),

          ),
          child:const  Icon(CupertinoIcons.camera_fill,color: Colors.white,size: 35,),

        ),


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


/// bottomNavigationBar ////
      bottomNavigationBar:
        
       BottomAppBar(
          height: 80,
          color: Colors.black, 

          notchMargin: 6,
          shape: const CircularNotchedRectangle(),

          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Padding(
                padding:const   EdgeInsets.all(15),
                child:  Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  const   Icon(CupertinoIcons.chat_bubble_text,color: Colors.white,),
                    Whitetext54("Chats",13)
                  ],
                ),
              ),

             const    Opacity(opacity: 0,child: Icon(Icons.no_cell,),),
              Padding(
                padding: const  EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   const Icon(CupertinoIcons.phone_solid,color: Colors.white),
                    Whitetext54("Calls",13)
                  ],
                ),
              ),


            ],
          ),
        ),


      /// body////
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const  SizedBox(height: 10,),


          /// Stories Section////
          Container(
            margin:const  EdgeInsets.symmetric(vertical: 10),
            height: 110,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
                itemCount: storieslist.length,
                itemBuilder: (context,index){
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor:const  Color(0xff4f5d7a),
                      child: index==0? const CircleAvatar(
                        radius: 37,
                        backgroundColor: Color(0xff121315),
                        child: Icon( CupertinoIcons.add,size: 40,),
                      ): CircleAvatar(
                        radius: 37,
                       backgroundImage: AssetImage(storieslist[index].images,),


                      ),

                    ),
                  ),
                  const SizedBox(height: 10,),
                  Whitetext54(storieslist[index].name,16),
                ],

              );
            }),
          ),

         /// chat list section////
         Expanded(child:  Container(
           width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: const BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
          ),
           child: Column(
             children: [
               Container(
                 margin:const EdgeInsets.only(top: 5),
                 height: 5,width: 40,
               decoration: BoxDecoration(
                 color:const  Color(0xff616b76),
                 borderRadius: BorderRadius.circular(10)
               ),),
              const  SizedBox(height: 20,),
               const  Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Text("Recent Chat",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 20),),
                   Icon(CupertinoIcons.square_arrow_down,color: Colors.white,)
                 ],),


               ),
             Expanded(
               child: ListView.builder(

                 shrinkWrap: true,
                   itemCount: chatlist.length,
                   itemBuilder: (context,index){
                 return GestureDetector(
                   onTap: (){
                     Navigator.of(context).push(CustomPageRouteUp( child:  IndividualChatScreen(chatlist[index]), ));
                     //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>IndividualChatScreen()));
                   },
                   child: Container(
                     padding:const  EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                     child: Row(
                       children: [
                     SizedBox(
                       width: 80,
                       height: 100,
                       child: CupertinoContextMenu(
                       actions: <Widget>[
                       CupertinoContextMenuAction(
                           onPressed: () {
                   Navigator.pop(context);
                   },
                       isDefaultAction: true,
                       trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                       child: const Text('Download Photo'),
                   ),
                       CupertinoContextMenuAction(
                         onPressed: () {
                           Navigator.pop(context);
                         },
                         trailingIcon: CupertinoIcons.share,
                         child: const Text('Share'),
                       ),
                       CupertinoContextMenuAction(
                         onPressed: () {
                           Navigator.pop(context);
                         },
                         trailingIcon: CupertinoIcons.heart,
                         child: const Text('Favorite'),
                       ),
                       CupertinoContextMenuAction(
                         onPressed: () {
                           Navigator.pop(context);
                         },
                         isDestructiveAction: true,
                         trailingIcon: CupertinoIcons.delete,
                         child: const Text('Block'),
                       ),
                       ],
                 child: CircleAvatar(
                   radius: 160,
                   backgroundImage: AssetImage(chatlist[index].image),
                 ),
                       ),
                     ),


                       const   SizedBox(width: 20,),
                         Expanded(child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,

                           children: [
                           Whitetext(chatlist[index].name),
                          const    SizedBox(height: 5,),
                             Whitetext54(chatlist[index].lastmessage, 14)
                         ],)),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.end,

                           children: [
                             Whitetext54(chatlist[index].lasttime, 14),
                            const SizedBox(height: 10,),
                             CircleAvatar(radius: 3,
                             backgroundColor: chatlist[index].isread?Colors.blue: Colors.white54,)

                           ],
                         )
                       ],
                     ),

                   ),
                 );
               }),
             )

             ],
           ),
         ))
        ],
      ),
    );
  }
}
