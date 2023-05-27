import 'package:chat_ui/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';
class IndividualChatScreen extends StatelessWidget {
  IndividualChat chatitem;
  IndividualChatScreen(this.chatitem);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors:  [

              Color(0xff214670),
              Color(0xff151822),
              Color(0xff214670),
              Color(0xff151822),
              Color(0xff151822),

            ]
        ),

      ),
      /// scaffold ///
      child: Scaffold(
        backgroundColor: Colors.transparent,

        /// appbar ///
        appBar: AppBar(
          leading:   GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child:const  CircleAvatar(

              backgroundColor: Color(0xff091225),
              child: Icon(CupertinoIcons.back,),
            ),
          ),

          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,

          title: Row(

            children: [
               CircleAvatar(
                radius: 28,
               backgroundImage: AssetImage(chatitem.image),
              ),
             const  SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Whitetext(chatitem.name),
                 const  SizedBox(height: 5,),
                  Whitetext54("Online",13 ),
                ],
              ),
            ],
          ),
          actions: const [


            SizedBox(width: 10,),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xff091225),
              child: Icon(CupertinoIcons.ellipsis_vertical,),
            ),
            SizedBox(width: 10,),
          ],
        ),

        /// body ///
        body: Container(

          margin:const  EdgeInsets.only(top: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: const BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
          ),
          child: Column(
            children: [
              Expanded(child:Column(
                children: [
                  Container(
                    margin:const  EdgeInsets.only(top: 20),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    alignment: Alignment.center,
                    child: Whitetext54("Today",14),
                  ),
                  Expanded(
                    child: ListView.builder(

                      shrinkWrap: true,
                        itemCount: chatitem.chatitems.length,
                        itemBuilder: (context,index){
                      return  Row(
                        mainAxisAlignment: chatitem.chatitems[index].ismy? MainAxisAlignment.end:MainAxisAlignment.start,
                        children: [
                            Column(
                              crossAxisAlignment:chatitem.chatitems[index].ismy? CrossAxisAlignment.end:CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),

                                margin:const  EdgeInsets.all(10),


                                width:MediaQuery.of(context).size.width/2,
                          decoration: BoxDecoration(
                              //  color: Colors.white12,
                              gradient:  LinearGradient(
                                  begin: Alignment.centerRight,
                                  end: Alignment.topLeft,
                                  colors: chatitem.chatitems[index].ismy?const [
                                    Color(0xff2b77ea),
                                    Color(0xff2896f9),
                                    Color(0xff31c9fe),


                                  ]:[
                                    Colors.white30,
                                     Colors.white12,



                                  ]
                              ),
                                borderRadius: BorderRadius.circular(15)
                          ),
                                  child: Text( chatitem.chatitems[index].message,style: const TextStyle(color: Colors.white,fontSize: 14),),


                          ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Whitetext54(chatitem.chatitems[index].time, 11),
                                )
                              ],
                            ),

                        ],
                      );

                    }),
                  )

                ],

              )),
              Container(
                margin:const  EdgeInsets.all(10),
                padding: const EdgeInsets.all(6),
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                   const  SizedBox(width: 10,),
                    Expanded(child: Whitetext54("Type message..", 14)),
                    Container(
                      height: 55,
                      width: 55,
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
                      child:const  Icon(CupertinoIcons.paperplane_fill,color: Colors.white,size: 25,),

                    ),


                  ],
                ),
              )
            ],
          ),
          
        ),

      ),

    );
  }
}
